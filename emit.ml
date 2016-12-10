open Asm

external getfloat : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
external getfloat : float -> int32 = "getfloat"

let stackset = ref S.empty (* すでに Save された変数の集合 *)
let stackmap = ref [] (* Save された変数のスタックにおける位置 *)
let offset = ref 0

let put_initialize oc gd heap =
  let putg (name, location, n, ini) =
    let init = function
      | Syntax.Int(i) ->
          Printf.fprintf oc "\tli\t$a0, %d\n" i
      | Syntax.Float(d) ->
          if (d = 0.0) then
            Printf.fprintf oc "\tmtc1\t$f0, $zero\n"
            (*(Printf.fprintf oc "\tli\t$v0, 0\n";
            Printf.fprintf oc "\tmtc1\t$f0, $v0\n") *)
          else
          (let fnum = getfloat d in
          let n = Int32.shift_right fnum 16 in
          let m = Int32.logxor fnum (Int32.shift_left n 16) in
          Printf.fprintf oc "\tli\t$v0, %ld\n" n;
          Printf.fprintf oc "\tsll\t$v0, $v0, 16\n";
          Printf.fprintf oc "\tori\t$v0, $v0, %ld\n" m;
          Printf.fprintf oc "\tmtc1\t$f0, $v0\n")
      | Syntax.Neg(Syntax.Int(i)) ->
          let i2 = -i in
          Printf.fprintf oc "\tli\t$a0, %d\n" i2
      | Syntax.Tuple(yts) ->
          Printf.fprintf oc "\tli\t$a0, %d\n" location;
          offset := 0;
          List.iter
            (fun e ->
              match e with
              | Syntax.Int(i) -> Printf.fprintf oc "\tli\t$a1, %d\n" i;
                                 Printf.fprintf oc "\tsw\t$a1, %d($a0)\n" !offset;
                                 offset := !offset + 4
              | Syntax.Float(d) ->
                  (if d = 0.0 then
                    Printf.fprintf oc "\tmtc1\t$f0, $zero\n"
                  else
                  let fnum = getfloat d in
                  let n = Int32.shift_right fnum 16 in
                  let m = Int32.logxor fnum (Int32.shift_left n 16) in
                  Printf.fprintf oc "\tli\t$v0, %ld\n" n;
                  Printf.fprintf oc "\tsll\t$v0, $v0, 16\n";
                  Printf.fprintf oc "\tori\t$v0, $v0, %ld\n" m;
                  Printf.fprintf oc "\tmtc1\t$f0, $v0\n");
                  Printf.fprintf oc "\tfsw\t$f0, %d($a0)\n" !offset;
                  offset := !offset + 4
              | Syntax.Bool(b) ->
                  let i = if b then 1 else 0 in
                  Printf.fprintf oc "\tli\t$a1, %d\n" i;
                  Printf.fprintf oc "\tsw\t$a1, %d($a0)\n" !offset;
                  offset := !offset + 4
              | Syntax.Var(x) ->
                  let (_, loc, _, _) = List.find (fun (y, _, _, _) -> x = y) gd in
                  Printf.fprintf oc "\tli\t$a1, %d\n" loc;
                  Printf.fprintf oc "\tsw\t$a1, %d($a0)\n" !offset;
                  offset := !offset + 4
              | _ -> failwith "fail of store of Tuple\n") yts
      | Syntax.Var(x) ->
            let (_, loc, _, _) = List.find (fun (y, _, _, _) -> x = y) gd in
            Printf.fprintf oc "\tli\t$a0, %d\n" loc
      | Syntax.Get(Syntax.Var(x), Syntax.Int(i)) ->
            let (_, loc, _, _) = List.find (fun (y, _, _, _) -> x = y) gd in
            Printf.fprintf oc "\tli\t$a1, %d\n" loc;
            Printf.fprintf oc "\tlw\t$a0, %d($a1)\n" (i*4)
      | _ -> failwith "init_error\n";
             in
    Printf.fprintf oc "_global_variable %s:\n" name;
    init ini;
    (match ini with
      | Syntax.Tuple(_) -> ()
      | _ ->
      (Printf.fprintf oc "\tli\t$a1, %d\n" location;
    let rec putinit i =
      if i < n then
        ((match ini with
          | Float(_) -> Printf.fprintf oc "\tfsw\t$f0, %d($a1)\n" (i*4)
          | _ -> (Printf.fprintf oc "\tsw\t$a0, %d($a1)\n" (i*4)));
        putinit (i+1))
      else () in
    putinit 0)) in
  List.iter putg gd;
  Printf.fprintf oc "\tsub\t$zero, $zero, $zero\n";
  (*Printf.fprintf oc "\tli\t$sp, 32768\n"; *)
  Printf.fprintf oc "\tli\t$fp, %d\n" heap;
  Printf.fprintf oc "\tj _min_caml_start2\n"

let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
       if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
       stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
    loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let reg r =
  if is_reg r
  then r
  else "$"^r

let load_label r label =
  (* "\tlis\t" ^ (reg r) ^ ", ha16(" ^ label ^ ")\n" ^
  "\taddi\t" ^ (reg r) ^ ", " ^ (reg r) ^ ", lo16(" ^ label ^ ")\n"*)
  "\tlil\t" ^ (reg r) ^ ", " ^ label ^"\n"

(* 関数呼び出しのために引数を並べ替える (register shuffling) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let (_, xys) = List.partition (fun (x, y) -> x = y) xys in
    (* find acyclic moves *)
    match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
      | ([], []) -> []
      | ((x, y) :: xys, []) -> (* no acyclic moves; resolve a cyclic move *)
	  (y, sw) :: (x, y) ::
	    shuffle sw (List.map (function
				    | (y', z) when y = y' -> (sw, z)
				    | yz -> yz) xys)
      | (xys, acyc) -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 *)
let rec g oc = function (* 命令列のアセンブリ生成 *)
  | (dest, Ans (exp)) -> g' oc (dest, exp)
  | (dest, Let((x, t), exp, e)) -> g' oc (NonTail (x), exp); g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 *)
    (* 末尾でなかったら計算結果を dest にセット *)
  | (NonTail(_), Nop) -> ()
  | (NonTail(x), Li(i)) when i >= -32768 && i < 32768 ->
      Printf.fprintf oc "\tli\t%s, %d\n" (reg x) i
  | (NonTail(x), Li(i)) ->
      let n1 = (i lsl 33) lsr 33 in (*64ビットで表現されているので、それを32ビットに変換*)
      let n2 =
        if i < 0 then
          n1 + 2147483648
        else n1 in
      let n = n2 lsr 16 in
      let m = n2 lxor (n lsl 16) in
      let r = reg x in
	Printf.fprintf oc "\tli\t%s, %d\n" r n;
  Printf.fprintf oc "\tsll\t%s, %s, 16\n" r r;
	Printf.fprintf oc "\tori\t%s, %s, %d\n" r r m
  | (NonTail(x), FLi(d)) ->
      (*let s = load_label "$f31" l in*)
      if d = 0.0 then
      (*)  (Printf.fprintf oc "\tli\t$v0, 0\n"; *)
        (Printf.fprintf oc "\tmtc1\t%s, $zero\n" (reg x))
      else
      (
      let fnum = getfloat d in
      let n = Int32.shift_right fnum 16 in
      let m = Int32.logxor fnum (Int32.shift_left n 16) in
        if Int32.to_int fnum < 2097152 && Int32.to_int fnum >= 0 then
          (Printf.fprintf oc "\tli\t$v0, %ld\n" fnum;
          Printf.fprintf oc "\tmtc1\t%s, $v0\n" (reg x))
        else
          (Printf.fprintf oc "\tli\t$v0, %ld\n" n;
          Printf.fprintf oc "\tsll\t$v0, $v0, 16\n";
          Printf.fprintf oc "\tori\t$v0, $v0, %ld\n" m;
          Printf.fprintf oc "\tmtc1\t%s, $v0\n" (reg x)))

      (*let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
    	Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tjal\t%s\n" l;
      Printf.fprintf oc "\tsubi\t%s, %s, %d\n" reg_sp reg_sp ss;
    	Printf.fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
      Printf.fprintf oc "\tmtc1\t%s, %s\n" (reg x) reg_sw*)
  | (NonTail(x), SetL(Id.L(y))) -> ()
      (*let s = load_label x y in
      Printf.fprintf oc "%s" s *)
  | (NonTail(x), SetExt(y)) ->
  (*  (if y = 0 then Printf.fprintf oc "\tnop\n"
    else ()); *)
    Printf.fprintf oc "\tli\t%s, %d\n" (reg x) y (*yの上限は1800以下*)
  | (NonTail(x), Mr(y)) when x = y -> ()
  | (NonTail(x), Mr(y)) -> Printf.fprintf oc "\tmove\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), Neg(y)) -> Printf.fprintf oc "\tneg\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), Add(y, V(z))) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Add(y, C(z))) ->
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), Sub(y, V(z))) ->
      Printf.fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Sub(y, C(z))) ->
      Printf.fprintf oc "\tsubi\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), Mul(y, V(z))) ->
      Printf.fprintf oc "\tmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Mul(y, C(z))) ->
      Printf.fprintf oc "\tmuli\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), Div(y, V(z))) ->
      Printf.fprintf oc "\tdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Div(y, C(z))) ->
      Printf.fprintf oc "\tdivi\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), ShiftL2(y)) -> Printf.fprintf oc "\tsla\t%s, %s, 2\n" (reg x) (reg y)
  | (NonTail(x), ShiftR1(y)) -> Printf.fprintf oc "\tsra\t%s, %s, 1\n" (reg x) (reg y)
  | (NonTail(x), Slw(y, V(z))) ->
      Printf.fprintf oc "\tslw\t%s, %s, %s\n" (reg x) (reg y) (reg z) (*使わない??*)
  | (NonTail(x), Slw(y, C(z))) ->
      Printf.fprintf oc "\tsll\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), Lwz(y, V(z))) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg z) (reg y) (reg z);
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg x) (reg z)  (*lwzxをlwに書き換え*)
  | (NonTail(x), Lwz(y, C(z))) ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | (NonTail(_), Stw(x, y, V(z))) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg z) (reg y) (reg z);
      Printf.fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) (reg z)
  | (NonTail(_), Stw(x, y, C(z))) ->
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | (NonTail(x), FMr(y)) when x = y -> ()
  | (NonTail(x), FMr(y)) -> Printf.fprintf oc "\tfmove\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), FNeg(y)) ->
      Printf.fprintf oc "\tfneg\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), FAdd(y, z)) ->
      Printf.fprintf oc "\tfadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FSub(y, z)) ->
      Printf.fprintf oc "\tfsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FMul(y, z)) ->
      Printf.fprintf oc "\tfmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FDiv(y, z)) ->
      Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FReciprocal(y)) ->
      Printf.fprintf oc "\tfinv\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), Xor(y, z)) ->
      Printf.fprintf oc "\txor\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FAbs(y)) ->
      Printf.fprintf oc "\tfabs\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), Sqrt(y)) ->
      Printf.fprintf oc "\tsqrt\t%s, %s\n" (reg x) (reg y)
  | (NonTail(_), Printchar(C(y))) ->
      Printf.fprintf oc "\tli\t$a23, %d\n" y;
      Printf.fprintf oc "\tprint_byte\t$a23\n";
  | (NonTail(_), Printchar(V(y))) ->
      Printf.fprintf oc "\tprint_byte\t%s\n" (reg y)
  | (NonTail(x), Lfd(y, V(z))) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg z) (reg y) (reg z);
      Printf.fprintf oc "\tflw\t%s, 0(%s)\n" (reg x) (reg z)
  | (NonTail(x), Lfd(y, C(z))) ->
      Printf.fprintf oc "\tflw\t%s, %d(%s)\n" (reg x) z (reg y)
  | (NonTail(_), Stfd(x, y, V(z))) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg z) (reg y) (reg z);
      Printf.fprintf oc "\tfsw\t%s, 0(%s)\n" (reg x) (reg z)
  | (NonTail(_), Stfd(x, y, C(z))) ->
      Printf.fprintf oc "\tfsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | (NonTail(_), Comment(s)) -> Printf.fprintf oc "#\t%s\n" s
  (* 退避の仮想命令の実装 *)
  | (NonTail(_), Save(x, y))
      when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
	Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (offset y) reg_sp
  | (NonTail(_), Save(x, y))
      when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
	Printf.fprintf oc "\tfsw\t%s, %d(%s)\n" (*stfd*) (reg x) (offset y) reg_sp
  | (NonTail(_), Save(x, y)) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 *)
  | (NonTail(x), Restore(y)) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (offset y) reg_sp
  | (NonTail(x), Restore(y)) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tflw\t%s, %d(%s)\n" (reg x) (offset y) reg_sp
  (* 末尾だったら計算結果を第一レジスタにセット *)
  | (Tail, (Nop | Stw _ | Stfd _ | Comment _ | Save _  | Printchar _ as exp)) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjr\t$ra\n";
  | (Tail, (Li _ | SetL _ | SetExt _ | Mr _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | ShiftL2 _ | ShiftR1 _ | Slw _ | Xor _ |
            Lwz _ as exp)) ->
      g' oc (NonTail(reg_re), exp);
      Printf.fprintf oc "\tjr\t$ra\n";
  | (Tail, (FLi _ | FMr _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FReciprocal _ | FAbs _ | Sqrt _ | Lfd _ as exp)) ->
      g' oc (NonTail(freg_re), exp);
      Printf.fprintf oc "\tjr $ra\n";
  | (Tail, (Restore(x) as exp)) ->
      (match locate x with
	 | [i] -> g' oc (NonTail(reg_re), exp)
	 | [i; j] when (i + 1 = j) -> g' oc (NonTail(fregs.(0)), exp)
	 | _ -> assert false);
      Printf.fprintf oc "\tjal\t$ra\n";
  | (Tail, IfEq(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_tail_if x y oc e1 e2 "beq" "bne"
  | (Tail, IfLE(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_tail_if_le x y oc e1 e2 "blt" "bge"
  | (Tail, IfGE(x, y, e1, e2)) -> (*使わない?*)
      (* Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_tail_if x y oc e1 e2 "bge" "blt"
  | (Tail, IfFEq(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tfcmpu\tcr7, %s, %s\n" (reg x) (reg y);*)
      g'_tail_if x y oc e1 e2 "fbeq" "fbne"
  | (Tail, IfFLE(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tfcmpu\tcr7, %s, %s\n" (reg x) (reg y);*)
      g'_tail_if_le x y oc e1 e2 "fblt" "fbge"
  | (NonTail(z), IfEq(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);*)
      g'_non_tail_if x y oc (NonTail(z)) e1 e2 "beq" "bne"
  | (NonTail(z), IfLE(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_non_tail_if_le x y oc (NonTail(z)) e1 e2 "blt" "bge"
  | (NonTail(z), IfGE(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_non_tail_if x y oc (NonTail(z)) e1 e2 "bge" "blt"
  | (NonTail(z), IfFEq(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tfcmpu\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_non_tail_if x y oc (NonTail(z)) e1 e2 "fbeq" "fbne"
  | (NonTail(z), IfFLE(x, y, e1, e2)) ->
      (*Printf.fprintf oc "\tfcmpu\tcr7, %s, %s\n" (reg x) (reg y); *)
      g'_non_tail_if_le x y oc (NonTail(z)) e1 e2 "fblt" "fbge"
  (* 関数呼び出しの仮想命令の実装 *)
  | (Tail, CallCls(x, x2, ys, zs)) -> (* 末尾呼び出し *) (*使わない?->使います...*)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_sw) (reg reg_cl);
      Printf.fprintf oc "\tj\t%s\n" x2;
  | (Tail, CallCls2(x, ys, zs)) -> (* 末尾呼び出し *) (*使わない?->使います...*)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_sw) (reg reg_cl);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_sw);
  | (Tail, CallDir(Id.L(x), ys, zs)) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x
  | (NonTail(a), CallCls(x, x2, ys, zs)) ->
      (*Printf.fprintf oc "\tmflr\t%s\n" reg_tmp;*)
      g'_args oc (*[]*)[(x, reg_cl)] ys zs;              (*関数名を引数として見るのをやめた*)
      let ss = stacksize () in
	Printf.fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
	Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
	(*Printf.fprintf oc "\tlw\t%s, 0(%s)\n" reg_tmp (reg reg_cl);*)
  Printf.fprintf oc "\tjal\t%s\n" x2;
	(*Printf.fprintf oc "\tmtctr\t%s\n" reg_tmp;
	Printf.fprintf oc "\tbctrl\n"; *)
	Printf.fprintf oc "\tsubi\t%s, %s, %d\n" reg_sp reg_sp ss;
	Printf.fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
  (if List.mem a allregs then
    Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) reg_re (*返り値をもとのレジスタに退避(もとのレジスタがすでに使われていることは無いはず...)*)
  else
    Printf.fprintf oc "\tfmove\t%s, %s\n" (reg a) freg_re);

	(*)(if List.mem a allregs && a <> regs.(0) then
	   Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) (reg regs.(0))
	 else if List.mem a allfregs && a <> fregs.(0) then
	   Printf.fprintf oc "\tfmove\t%s, %s\n" (reg a) (reg fregs.(0)));*)
	(*Printf.fprintf oc "\tmtlr\t%s\n" reg_tmp *)
  | (NonTail(a), CallCls2(x, ys, zs)) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
	Printf.fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
	Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
	Printf.fprintf oc "\tlw\t%s, 0(%s)\n" reg_next (reg reg_cl);
  Printf.fprintf oc "\tjrl\t%s\n" reg_next;
	(*Printf.fprintf oc "\tmtctr\t%s\n" reg_tmp;
	Printf.fprintf oc "\tbctrl\n"; *)
	Printf.fprintf oc "\tsubi\t%s, %s, %d\n" reg_sp reg_sp ss;
	Printf.fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp;
  Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) reg_re; (*返り値をもとのレジスタに退避(もとのレジスタがすでに使われていることは無いはず...)*)

	(if List.mem a allregs && a <> regs.(0) then
	   Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) (reg regs.(0))
	 else if List.mem a allfregs && a <> fregs.(0) then
	   Printf.fprintf oc "\tfmove\t%s, %s\n" (reg a) (reg fregs.(0)));
	(*Printf.fprintf oc "\tmtlr\t%s\n" reg_tmp *)
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      (*Printf.fprintf oc "\tmflr\t%s\n" reg_tmp;*)
      g'_args oc [] ys zs;
      let ss = stacksize () in
	Printf.fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp; (*次の戻り先のアドレスを保存*)
	Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
  (* (if List.length ys <= 4 then begin
    for i = 0 to (List.length ys) - 1 do
      Printf.fprintf oc "\tmove\t%s, %s\n" (reg (reg_arg.(i))) (reg (List.nth ys i)) done end
  else
    for i = 0 to 3 do
      Printf.fprintf oc "\t,move\t%s, %s\n" (reg (reg_arg.(i))) (reg (List.nth ys i)) done;
    for i = 4 to (List.length ys) - 1 do
      let offset = 16 + 4*(i-4) in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg (List.nth ys i)) offset reg_sp; done); *)
  Printf.fprintf oc "\tjal\t%s\n" x;
	Printf.fprintf oc "\tsubi\t%s, %s, %d\n" reg_sp reg_sp ss;
	Printf.fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (ss - 4) reg_sp; (*次の戻り先のアドレスを獲得*)
  (if (String.contains (reg a) 'a') then
  Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) reg_re (*返り値をもとのレジスタに退避(もとのレジスタがすでに使われていることは無いはず...)*)
  else
    Printf.fprintf oc "\tfmove\t%s, $fv\n" (reg a));
	(*)(if List.mem a allregs && a <> regs.(0) then
	   Printf.fprintf oc "\tmove\t%s, %s\n" (reg a) (reg regs.(0))
	 else if List.mem a allfregs && a <> fregs.(0) then
	   Printf.fprintf oc "\tfmove\t%s, %s\n" (reg a) (reg fregs.(0))); *)
	(*Printf.fprintf oc "\tmtlr\t%s\n" reg_tmp  mipsでは、r31がリンクレジスタに相当*)
and g'_tail_if x y oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn (reg x) (reg y) b_else;
    let stackset_back = !stackset in
      g oc (Tail, e1);
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (Tail, e2)
and g'_tail_if_le x y oc e1 e2 b bn =
  let bn_else = Id.genid (bn ^ "_else") in
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" b (reg y) (reg x) bn_else;
    let stackset_back = !stackset in
      g oc (Tail, e1);
      Printf.fprintf oc "%s:\n" bn_else;
      stackset := stackset_back;
      g oc (Tail, e2)
and g'_non_tail_if x y oc dest e1 e2 b bn =
  let b_else = Id.genid (bn ^ "_else") in
  let b_cont = Id.genid (bn ^ "_cont") in
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn (reg x) (reg y) b_else;
    let stackset_back = !stackset in
      g oc (dest, e1);
      let stackset1 = !stackset in
	Printf.fprintf oc "\tj\t%s\n" b_cont;
	Printf.fprintf oc "%s:\n" b_else;
	stackset := stackset_back;
	g oc (dest, e2);
	Printf.fprintf oc "%s:\n" b_cont;
	let stackset2 = !stackset in
	  stackset := S.inter stackset1 stackset2
and g'_non_tail_if_le x y oc dest e1 e2 b bn =
  let bn_else = Id.genid (bn ^ "_else") in
  let bn_cont = Id.genid (bn ^ "_cont") in
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" b (reg y) (reg x) bn_else;
    let stackset_back = !stackset in
      g oc (dest, e1);
      let stackset1 = !stackset in
	Printf.fprintf oc "\tj\t%s\n" bn_cont;
	Printf.fprintf oc "%s:\n" bn_else;
	stackset := stackset_back;
	g oc (dest, e2);
	Printf.fprintf oc "%s:\n" bn_cont;
	let stackset2 = !stackset in
	  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl) ys in
    List.iter
      (fun (y, r) -> Printf.fprintf oc "\tmove\t%s, %s\n" (reg r) (reg y))
      (shuffle reg_sw yrs);
    let (d, zfrs) =
      List.fold_left
	(fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
	(0, []) zs in
      List.iter
        (fun (z, fr) -> Printf.fprintf oc "\tfmove\t%s, %s\n" (reg fr) (reg z))
	(shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc global_data heap (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "_min_caml_start: #entry_point\n";
  put_initialize oc (List.rev global_data) heap;

  (*(if data <> [] then
    ((*Printf.fprintf oc "\t.data\n\t.literal8\n";*)
     List.iter
       (fun (Id.L(x), d) ->
	 (*Printf.fprintf oc "\t.align 3\n";*)
	 Printf.fprintf oc "%s:\t # %f\n" x d;
   let fnum = getfloat d in
   let n = Int32.shift_right fnum 16 in
   let m = Int32.logxor fnum (Int32.shift_left n 16) in
   Printf.fprintf oc "\tli\t%s, %ld\n" reg_sw n;
   Printf.fprintf oc "\tsll\t%s, %s, 16\n" reg_sw reg_sw;
   Printf.fprintf oc "\tori\t%s, %s, %ld\n" reg_sw reg_sw m;
   Printf.fprintf oc "\tjr\t$ra\n";
 	 (*Printf.fprintf oc "\t.long\t%ld\n" (getfloat d); *)
   (*Printf.fprintf oc "\t.long\t%ld\n" (getlo d) *)
       ) data));*)
  (*Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl  _min_caml_start\n";
  Printf.fprintf oc "\t.align 2\n"; *)
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "exit:\n";
  Printf.fprintf oc "\thlt\n";
  Printf.fprintf oc "_min_caml_start2: # main entry point\n";
  (*Printf.fprintf oc "\tmflr\tr0\n";
  Printf.fprintf oc "\tstmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tsw\tr0, 8(r1)\n";
  Printf.fprintf oc "\tstwu\tr1, -96(r1)\n"; *)
  Printf.fprintf oc "   # main program start\n";
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("$a0"), e);
  Printf.fprintf oc "\tj exit";
  Printf.fprintf oc "   # main program end\n"
(*  Printf.fprintf oc "\tmove\tr3, %s\n" regs.(0); *)
  (*Printf.fprintf oc "\tlw\tr1, 0(r1)\n";
  Printf.fprintf oc "\tlw\tr0, 8(r1)\n";
  Printf.fprintf oc "\tmtlr\tr0\n";
  Printf.fprintf oc "\tlmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tjr $31\n"*)
