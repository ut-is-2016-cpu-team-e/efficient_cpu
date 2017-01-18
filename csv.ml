open KNormal

type tcsv =
  | F of Id.t
  | N

type tuplecse =
  | Ft of (Id.t * Type.t) list
  | Nt

let replace_comp x x1 y = if x = x1 then y else x1
let rec replace x y = function
  | Unit | Int(_) | Float(_) | ExtArray(_) | ExtTuple(_) | Readint | Readfloat as e -> e
  | Neg(x1) -> Neg(replace_comp x x1 y)
  | ShiftL2(x1) -> ShiftL2(replace_comp x x1 y)
  | ShiftR1(x1) -> ShiftR1(replace_comp x x1 y)
  | FNeg(x1) -> FNeg(replace_comp x x1 y)
  | FReciprocal(x1) -> FReciprocal(replace_comp x x1 y)
  | Var(x1) -> Var(replace_comp x x1 y)
  | Add(x1, x2) -> Add(replace_comp x x1 y, replace_comp x x2 y)
  | Sub(x1, x2) -> Sub(replace_comp x x1 y, replace_comp x x2 y)
  | Mul(x1, x2) -> Mul(replace_comp x x1 y, replace_comp x x2 y)
  | Div(x1, x2) -> Div(replace_comp x x1 y, replace_comp x x2 y)
  | FAdd(x1, x2) -> FAdd(replace_comp x x1 y, replace_comp x x2 y)
  | FSub(x1, x2) -> FSub(replace_comp x x1 y, replace_comp x x2 y)
  | FMul(x1, x2) -> FMul(replace_comp x x1 y, replace_comp x x2 y)
  | FDiv(x1, x2) -> FDiv(replace_comp x x1 y, replace_comp x x2 y)
  | FMAdd(x1, x2, x3) -> FMAdd(replace_comp x x1 y, replace_comp x x2 y, replace_comp x x3 y)
  | FMSub(x1, x2, x3) -> FMSub(replace_comp x x1 y, replace_comp x x2 y, replace_comp x x3 y)
  | Xor(x1, x2) -> Xor(replace_comp x x1 y, replace_comp x x2 y)
  | FAbs(x1) -> FAbs(replace_comp x x1 y)
  | Sqrt(x1) -> Sqrt(replace_comp x x1 y)
  | Printchar(x1) -> Printchar(replace_comp x x1 y)
  | IfEq(x1, x2, e1, e2) -> IfEq(replace_comp x x1 y, replace_comp x x2 y, replace x y e1, replace x y e2)
  | IfLE(x1, x2, e1, e2) -> IfLE(replace_comp x x1 y, replace_comp x x2 y, replace x y e1, replace x y e2)
  | IfFAbsLE(x1, x2, e1, e2) -> IfFAbsLE(replace_comp x x1 y, replace_comp x x2 y, replace x y e1, replace x y e2)
  | Let((x1, t), e1, e2) -> Let((x1, t), replace x y e1, replace x y e2)
  | LetRec({name = (x1, t); args = yts; body = e1}, e2) ->
      LetRec({name=(x1, t); args = yts; body = replace x y e1}, replace x y e2)
  | App(x1, yts) -> App(replace_comp x x1 y, List.map (fun x' -> replace_comp x x' y) yts)
  | App2(x1, yts) -> App2(replace_comp x x1 y, List.map (fun x' -> replace_comp x x' y) yts)
  | Tuple(xts) -> Tuple(List.map (fun x' -> replace_comp x x' y) xts)
  | LetTuple(xts, x1, e) -> LetTuple(xts, replace_comp x x1 y, replace x y e)
  | Get(x1, x2) -> Get(replace_comp x x1 y, replace_comp x x2 y)
  | Put(x1, x2, x3) -> Put(replace_comp x x1 y, replace_comp x x2 y, replace_comp x x3 y)
  | ExtFunApp(x1, yts) -> ExtFunApp(replace_comp x x1 y, List.map (fun x' -> replace_comp x x' y) yts)


let rec app_not_exists = function
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> (app_not_exists e1) && (app_not_exists e2)
  | LetTuple(_, _, e) -> app_not_exists e
  | App(_) | App2(_) | ExtFunApp(_) | LetRec(_) -> false
  | _ -> true

let rec find e1 = function
  | [] -> N
  | (e,x)::es -> if e1 = e then F(x) else find e1 es

let rec findtuple x = function
  | [] -> Nt
  | (y, ylist)::xs -> if x = y then Ft(ylist) else findtuple x xs

let rec g env tupleenv = function
  | Let((x, t), e1, e2) ->
      (match e1 with
        | Int(_) | Float(_) | ExtArray(_) | ExtTuple(_) ->
          (match find e1 env with
          | F(y) -> Format.eprintf "csv-eliminate %s\n" x; let e2' = replace x y e2 in g env tupleenv e2'
          | N -> Let((x, t), g env tupleenv e1, g ((e1,x)::env) tupleenv e2))
        | App(_) | App2(_) | ExtFunApp(_) -> Let((x, t), g [] [] e1, g [] [] e2)
        | _ ->
          let e2' = if app_not_exists e1 then g env tupleenv e2 else g [] [] e2 in
          Let((x, t), g env tupleenv e1, e2'))
  | LetRec({name = (x, t); args = yts; body = e1}, e2) -> LetRec({name = (x, t); args = yts; body = g [] [] e1}, g [] [] e2)
  | LetTuple(xlist, y, e) ->
      (match findtuple y tupleenv with
        | Ft(zlist) -> Format.eprintf "ByeByeTuple! %s\n" y; let e' = List.fold_left2 (fun e2 -> fun x -> fun y -> replace (fst x) (fst y) e2) e xlist zlist in g env tupleenv e'
        | Nt -> LetTuple(xlist, y, g env ((y, xlist)::tupleenv) e))
  | IfEq(x, y, e1, e2) ->
    let e1' = if app_not_exists e1 then g env [] e1 else g [] [] e1 in
    let e2' = if app_not_exists e2 then g env [] e2 else g [] [] e2 in
    IfEq(x, y, e1', e2')
  | IfLE(x, y, e1, e2) ->
    let e1' = if app_not_exists e1 then g env [] e1 else g [] [] e1 in
    let e2' = if app_not_exists e2 then g env [] e2 else g [] [] e2 in
    IfLE(x, y, e1', e2')
  | _ as e -> e

let f e = g [] [] e
