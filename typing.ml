(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t

let extenv = ref M.empty

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)
let rec deref_term = function
  | Not(e) -> Not(deref_term e)
  | Neg(e) -> Neg(deref_term e)
  | Add(e1, e2) -> Add(deref_term e1, deref_term e2)
  | Sub(e1, e2) -> Sub(deref_term e1, deref_term e2)
  | Mul(e1, e2) -> Mul(deref_term e1, deref_term e2)
  | Div(e1, e2) -> Div(deref_term e1, deref_term e2)
  | Eq(e1, e2) -> Eq(deref_term e1, deref_term e2)
  | LE(e1, e2) -> LE(deref_term e1, deref_term e2)
  | FNeg(e) -> FNeg(deref_term e)
  | FAdd(e1, e2) -> FAdd(deref_term e1, deref_term e2)
  | FSub(e1, e2) -> FSub(deref_term e1, deref_term e2)
  | FMul(e1, e2) -> FMul(deref_term e1, deref_term e2)
  | FDiv(e1, e2) -> FDiv(deref_term e1, deref_term e2)
  | Xor(e1, e2) -> Xor(deref_term e1, deref_term e2)
  | FAbs(e1) -> FAbs(deref_term e1)
  | Sqrt(e1) -> Sqrt(deref_term e1)
  | Printchar(e1) -> Printchar(deref_term e1)
  | Readint(e1) -> Readint(deref_term e1)
  | Readfloat(e1) -> Readfloat(deref_term e1)
  | If(e1, e2, e3) -> If(deref_term e1, deref_term e2, deref_term e3)
  | Let(xt, e1, e2) -> Let(deref_id_typ xt, deref_term e1, deref_term e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = deref_id_typ xt;
	       args = List.map deref_id_typ yts;
	       body = deref_term e1 },
	     deref_term e2)
  | App(e, es) -> App(deref_term e, List.map deref_term es)
  | Tuple(es) -> Tuple(List.map deref_term es)
  | LetTuple(xts, e1, e2) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2)
  | Array(e1, e2) -> Array(deref_term e1, deref_term e2)
  | Get(e1, e2) -> Get(deref_term e1, deref_term e2)
  | Put(e1, e2, e3) -> Put(deref_term e1, deref_term e2, deref_term e3)
  | e -> e

let rec out_term = function
  | Unit -> Printf.fprintf stdout "Unit\n";
  | Bool(_) -> Printf.fprintf stdout "Bool\n";
  | Int(_) -> Printf.fprintf stdout "Int\n";
  | Get(_) -> Printf.fprintf stdout "Get\n";
  | Put(_) -> Printf.fprintf stdout "Put\n";
  | Tuple(_) -> Printf.fprintf stdout "Tuple\n";
  | App(e, es) -> Printf.fprintf stdout "App\n"; out_term e;
    let t1::t2::ts = es in out_term t1; out_term t2;
  | Array(_) -> Printf.fprintf stdout "Array\n";
  | Add(_) -> Printf.fprintf stdout "Add\n";
  | Let((x, t), e, _) -> Printf.fprintf stdout "Let %s\n" x; out_term e;
  | Int(_) -> Printf.fprintf stdout "Int\n";
  | Float(_) -> Printf.fprintf stdout "Float\n"
  | Var(s) -> Printf.fprintf stdout "Var %s\n" s;
  | Not(_) -> Printf.fprintf stdout "Not\n";
  | Neg(_) -> Printf.fprintf stdout "Neg\n";
  | Sub(_) -> Printf.fprintf stdout "Sub\n";
  | Mul(_) -> Printf.fprintf stdout "Mul\n";
  | Div(_) -> Printf.fprintf stdout "Div\n";
  | FNeg(_) -> Printf.fprintf stdout "FNeg\n";
  | FAdd(_) -> Printf.fprintf stdout "FAdd\n";
  | FSub(_) -> Printf.fprintf stdout "FSub\n";
  | FMul(_) -> Printf.fprintf stdout "FMul\n";
  | LetRec(_) -> Printf.fprintf stdout "LetRec\n";
  | If(_) -> Printf.fprintf stdout "If\n";
  | Eq(_) -> Printf.fprintf stdout "Eq\n";
  | LE(_) -> Printf.fprintf stdout "LE\n";
  | LetTuple(_) -> Printf.fprintf stdout "LetTuple\n";
  | Xor(_) -> Printf.fprintf stdout "xor\n";
  | Printchar(_) -> Printf.fprintf stdout "printchar\n";
  | FAbs(_) -> Printf.fprintf stdout "fabs\n";
  | Sqrt(_) -> Printf.fprintf stdout "sqrt\n";
  | _ -> Printf.fprintf stdout "others\n"

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)));
      unify t1' t2'
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2'
  | Type.Var({ contents = None } as r1), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec g env e = (* 型推論ルーチン (caml2html: typing_g) *)
  try
    match e with
    | Unit -> Type.Unit
    | Bool(_) -> Type.Bool
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Not(e) ->
	unify Type.Bool (g env e);
	Type.Bool
    | Xor(e1, e2) ->
  unify Type.Bool (g env e1);
  unify Type.Bool (g env e2);
  Type.Bool
    | Neg(e) ->
	unify Type.Int (g env e);
	Type.Int
    | Printchar(e) ->
  unify Type.Int (g env e);
  Type.Unit
    | Readint(e) ->
  unify Type.Unit (g env e);
  Type.Int
    | Readfloat(e) ->
  unify Type.Unit (g env e);
  Type.Float
    | Add(e1, e2) | Sub(e1, e2) | Mul(e1, e2) | Div(e1, e2) -> (* 足し算（と引き算）(と掛け算)の型推論 (caml2html: typing_add) *)
	unify Type.Int (g env e1);
	unify Type.Int (g env e2);
	Type.Int
    | FNeg(e) | FAbs(e) | Sqrt(e) ->
	unify Type.Float (g env e);
	Type.Float
    | FAdd(e1, e2) | FSub(e1, e2) | FMul(e1, e2) | FDiv(e1, e2) ->
	unify Type.Float (g env e1);
	unify Type.Float (g env e2);
	Type.Float
    | Eq(e1, e2) | LE(e1, e2) ->
	unify (g env e1) (g env e2);
	Type.Bool
    | If(e1, e2, e3) ->
	unify (g env e1) Type.Bool;
	let t2 = g env e2 in
	let t3 = g env e3 in
	unify t2 t3;
	t2
    | Let((x, t), e1, e2) -> (* letの型推論 (caml2html: typing_let) *)
	unify t (g env e1);
	g (M.add x t env) e2
    | Var(x) when M.mem x env -> M.find x env (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x) when M.mem x !extenv -> M.find x !extenv
    | Var(x) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
	Format.eprintf "free variable %s assumed as external@." x;
	let t = Type.gentyp () in
  Printf.fprintf stdout "gentyp %s %s\n" x, t;
	extenv := M.add x t !extenv;
	t
    | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recの型推論 (caml2html: typing_letrec) *)
	let env = M.add x t env in
	unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) e1));
	g env e2
    | App(e, es) -> (* 関数適用の型推論 (caml2html: typing_app) *)
	let t = Type.gentyp () in
	unify (g env e) (Type.Fun(List.map (g env) es, t));
	t
    | Tuple(es) -> Type.Tuple(List.map (g env) es)
    | LetTuple(xts, e1, e2) ->
	unify (Type.Tuple(List.map snd xts)) (g env e1);
	g (M.add_list xts env) e2
    | Array(e1, e2) -> (* must be a primitive for "polymorphic" typing *)
	unify (g env e1) Type.Int;
	Type.Array(g env e2)
    | Get(e1, e2) ->
	let t = Type.gentyp () in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	t
    | Put(e1, e2, e3) ->
	let t = g env e3 in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	Type.Unit
  with Unify(t1, t2) -> out_term e; raise (Error(deref_term e, deref_typ t1, deref_typ t2))

let f e =
  extenv := M.empty;
(*
  (match deref_typ (g M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
(try unify Type.Unit (g M.empty e)
  with Unify _ -> failwith "top level does not have type unit");
  extenv := M.map deref_typ !extenv;
  deref_term e
