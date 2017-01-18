open KNormal

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
    | FMAdd(x, y, z) -> cse_find e csel
    | FMSub(x, y, z) -> cse_find e csel
    | FReciprocal(x) -> cse_find e csel
    | Xor(x, y) -> cse_find e csel
    | FAbs(x) -> cse_find e csel
    | Sqrt(x) -> cse_find e csel
    | Printchar(x) -> e
    | Readint | Readfloat -> e
    | IfEq(x, y, e1, e2) -> IfEq(x, y, cse_find e1 csel, cse_find e2 csel)
    | IfLE(x, y, e1, e2) -> IfLE(x, y, cse_find e1 csel, cse_find e2 csel)
    | IfFAbsLE(x, y, e1, e2) -> IfFAbsLE(x, y, cse_find e1 csel, cse_find e2 csel)
    | Let(x, e1, e2) ->
      let e1' = cse e1 csel in
        (match e1' with
        | Neg _ | Add _ | Sub _ | Mul _ | ShiftL2 _ | ShiftR1 _ | Div _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FMAdd _ | FMSub _ | Xor _ | FAbs _ | Sqrt _ | IfEq _ | IfLE _ | Tuple _ ->
          let csel' = let (xx, xt) = x in cse_add (e1, xx) csel in
          Let(x, e1', cse e2 csel')
        | _ -> Let(x, e1', cse e2 csel))
    | Var(x) -> Var(x)
    | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
      let e1' = cse e1 csel in
      LetRec({ name = (x,t); args = yts; body = e1' }, cse e2 csel)
    | App(x, ys) -> e
    | App2(x, ys) -> e
    | Tuple(xs) -> cse_find e csel
    | LetTuple(xts, y, e') -> LetTuple(xts, y, cse_find e csel)
    | Get(x,y) -> Get(x,y)
    | Put(x,y,z) -> Put(x,y,z)
    | ExtArray(x) -> ExtArray(x)
    | ExtTuple(x) -> ExtTuple(x)
    | ExtFunApp(x,ys) -> cse_find e csel

let f e = cse e []
