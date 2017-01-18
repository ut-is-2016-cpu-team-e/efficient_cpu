open KNormal

let rec g e env =
  match e with
  | FAdd(x, y) when List.mem_assoc x env ->
      let t = List.assoc x env in
      (match t with
        | FMul(x1, x2) -> FMAdd(x1, x2, y)
        | _ -> FAdd(x, y))
  | FSub(x, y) when List.mem_assoc x env ->
      let t = List.assoc x env in
      (match t with
        | FMul(x1, x2) -> FMSub(x1, x2, y)
        | _ -> FSub(x, y))
  | FAdd(x, y) when List.mem_assoc y env ->
      let t = List.assoc y env in
      (match t with
        | FMul(y1, y2) -> FMAdd(y1, y2, x)
        | _ -> FAdd(x, y))
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g e1 env, g e2 env)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g e1 env, g e2 env)
  | IfFAbsLE(x, y, e1, e2) -> IfFAbsLE(x, y, g e1 env, g e2 env)
  | Let((x1, t), e1, e2) ->
      (match e1 with
      | FMul(y, z) -> Let((x1, t), g e1 env, g e2 ((x1, FMul(y, z))::env))
      | _ -> Let((x1, t), g e1 env, g e2 env))
  | LetRec({name = (x1, t); args = yts; body = e1}, e2) ->
      LetRec({name = (x1, t); args = yts; body = g e1 env}, g e2 env)
  | LetTuple(xts, y, e1) -> LetTuple(xts, y, g e1 env)
  | _ -> e

let f e = g e []
