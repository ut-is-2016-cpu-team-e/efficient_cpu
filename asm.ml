(* PowerPC assembly with a few virtual instructions *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 *)
  | Nop
  | Li of int
  | FLi of float
  | SetL of Id.l
  | Mr of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | ShiftL2 of Id.t
  | ShiftR1 of Id.t
  | Slw of Id.t * id_or_imm
  | Lwz of Id.t * id_or_imm
  | Stw of Id.t * Id.t * id_or_imm
  | FMr of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | FReciprocal of Id.t
  | Xor of Id.t * Id.t
  | FAbs of Id.t
  | Sqrt of Id.t
  | Printchar of id_or_imm
  | Lfd of Id.t * id_or_imm
  | Stfd of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | IfGE of Id.t * Id.t * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t * Id.t list * Id.t list
  | CallCls2 of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
  | SetExt of int
type fundef =
    { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 *)
type prog = Prog of (Id.l * float) list * fundef list * t

(* shorthand of Let for float *)
(* fletd : Id.t * exp * t -> t *)
let fletd (x, e1, e2) = Let ((x, Type.Float), e1, e2)
(* shorthand of Let for unit *)
(* seq : exp * t -> t *)
let seq (e1, e2) = Let ((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = [| "$a0"; "$a1"; "$a2"; "$a3"; "$a4"; "a5"; "$a6"; "$a7"; "$a8"; "$a9";
"$a10"; "$a11"; "$a12"; "$a13"; "$a14"; "$a15"; "$a16"; "$a17"; "$a18";
  "$a19"; "$a20"; "$a21"; "$a22"; "$a23"; "$a24"; "$a25"; "$a26" |]
(* let regs = Array.init 27 (fun i -> Printf.sprintf "_R_%d" i) *)
let fregs = Array.init 31 (fun i -> Printf.sprintf "$f%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_next = regs.(Array.length regs - 3)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)

(*MIPSレジスタ*)
let reg_re = "$v0" (*28番*)
let reg_hp = "$fp" (*29番*)
let reg_sp = "$sp" (*30番*)
let reg_tmp = "$ra" (*31番*)
let freg_re = "$fv"


(* is_reg : Id.t -> bool *)
let is_reg x = (x.[0] = '%') || (x.[0] = '$')

(* remove_and_uniq : S.t -> Id.t list -> Id.t list *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) *)
(* fv_id_or_imm : id_or_imm -> Id.t list *)
let fv_id_or_imm = function V (x) -> [x] | _ -> []
(* fv_exp : Id.t list -> t -> S.t list *)
let rec fv_exp = function
  | Nop | Li (_) | FLi (_) | SetL (_) | SetExt (_) | Comment (_) | Restore (_) | Printchar(_)-> []
  | Mr (x) | Neg (x) | ShiftL2(x) | ShiftR1(x) | FMr (x) | FNeg (x) | FReciprocal (x) | Save (x, _) | FAbs(x) | Sqrt(x) -> [x]
  | Add (x, y') | Sub (x, y') | Mul (x, y') | Div (x, y') | Slw (x, y') | Lfd (x, y') | Lwz (x, y') ->
      x :: fv_id_or_imm y'
  | FAdd (x, y) | FSub (x, y) | FMul (x, y) | FDiv (x, y) | Xor(x, y) ->
      [x; y]
  | Stw (x, y, z') | Stfd (x, y, z') -> x :: y :: fv_id_or_imm z'
  | IfEq (x, y, e1, e2) | IfLE (x, y, e1, e2) | IfGE (x, y, e1, e2) ->
      x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2)
  | IfFEq (x, y, e1, e2) | IfFLE (x, y, e1, e2) ->
      x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2)
  | CallCls (x1, x2, ys, zs) -> x1 :: ys @ zs
  | CallCls2 (x, ys, zs) -> x::ys@zs
  | CallDir (_, ys, zs) -> ys @ zs
and fv = function
  | Ans (exp) -> fv_exp exp
  | Let ((x, t), exp, e) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
(*xはすでにレジスタ割り当てをしているはずなので、それ以外のものについて考える?*)

(* fv : t -> Id.t list *)
let fv e = remove_and_uniq S.empty (fv e)

(* concat : t -> Id.t * Type.t -> t -> t *)
let rec concat e1 xt e2 = match e1 with
  | Ans (exp) -> Let (xt, exp, e2)
  | Let (yt, exp, e1') -> Let (yt, exp, concat e1' xt e2)

(* align : int -> int *)
let align i = if i mod 8 = 0 then i else i + 4
