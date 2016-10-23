(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

let rec cse_find e = function
  | [] -> e
  | (ex,x)::ls -> if e = ex then Var(x) else cse_find e ls
let cse_add x env = x::env

let rec cse e csel =
  match e with
    | Unit -> Unit
    | Int(i) -> Int(i)
    | Float(d) -> Float(d)
    | Neg(x) -> Neg(x)
    | Add(x, y) -> cse_find e csel
    | Sub(x, y) -> cse_find e csel
    | Mul(x, y) -> cse_find e csel
    | Div(x, y) -> cse_find e csel
    | ShiftL2(x) -> cse_find e csel
    | ShiftR1(x) -> cse_find e csel
    | FNeg(x) -> cse_find e csel
    | FAdd(x, y) -> cse_find e csel
    | FSub(x, y) -> cse_find e csel
    | FMul(x, y) -> cse_find e csel
    | FDiv(x, y) -> cse_find e csel
    | FReciprocal(x) -> cse_find e csel
    | IfEq(x, y, e1, e2) -> IfEq(x, y, cse_find e1 csel, cse_find e2 csel)
    | IfLE(x, y, e1, e2) -> IfLE(x, y, cse_find e1 csel, cse_find e2 csel)
    | Let(x, e1, e2) ->
      let e1' = cse e1 csel in
        (match e1' with
        | Neg _ | Add _ | Sub _ | Mul _ | ShiftL2 _ | ShiftR1 _ | Div _ | FAdd _ | FSub _ | FMul _ | FDiv _ | IfEq _ | IfLE _ | App _ | ExtFunApp _ ->
          let csel' = let (xx, xt) = x in cse_add (e1, xx) csel in
          Printf.eprintf "Let\n"; Let(x, e1', cse e2 csel')
        | _ -> Printf.eprintf"nLet\n"; Let(x, e1', cse e2 csel))
    | Var(x) -> Var(x)
    | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
      let e1' = cse e1 csel in
      LetRec({ name = (x,t); args = yts; body = e1' }, cse e2 csel)
    | App(x, ys) -> cse_find e csel
    | Tuple(xs) -> Tuple(xs)
    | LetTuple(xts, y, e) -> LetTuple(xts, y, cse e csel)
    | Get(x,y) -> Get(x,y)
    | Put(x,y,z) -> Put(x,y,z)
    | ExtArray(x) -> ExtArray(x)
    | ExtFunApp(x,ys) -> cse_find e csel

(*envは変数名を付け替える前と後の組*)
let rec g env = function (* α変換ルーチン本体 (caml2html: alpha_g) *)
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Neg(x) -> Neg(find x env)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | ShiftL2(x) -> ShiftL2(find x env)
  | ShiftR1(x) -> ShiftR1(find x env)
  | Div(x, y) -> Div(find x env, find y env)
  | FNeg(x) -> FNeg(find x env)
  | FAdd(x, y) -> FAdd(find x env, find y env)
  | FSub(x, y) -> FSub(find x env, find y env)
  | FMul(x, y) -> FMul(find x env, find y env)
  | FDiv(x, y) -> FDiv(find x env, find y env)
  | FReciprocal(x) -> FReciprocal(find x env)
  | IfEq(x, y, e1, e2) -> IfEq(find x env, find y env, g env e1, g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(find x env, find y env, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのα変換 (caml2html: alpha_let) *)
      let x' = Id.genid x in
      Let((x', t), g env e1, g (M.add x x' env) e2)
  | Var(x) -> Var(find x env)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recのα変換 (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
	       args = List.map (fun (y, t) -> (find y env', t)) yts;
	       body = g env' e1 },
	     g env e2)
  | App(x, ys) -> App(find x env, List.map (fun y -> find y env) ys)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) -> (* LetTupleのα変換 (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in (*let_insertは終わっている*)
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
	       find y env,
	       g env' e)
  | Get(x, y) -> Get(find x env, find y env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)

let f e = cse (g M.empty e) [] (*g M.empty e*)
