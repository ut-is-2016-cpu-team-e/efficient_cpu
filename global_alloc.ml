let heap = ref 0
let global_data = ref []

let rec g e =
 let rec cope_let x1 = function
    | Syntax.Array(Syntax.Int(i), e3) ->   (*名前(x)、場所(heap)、個数(i)、初期値(init)*)
      let ini = init e3 in
      let location = !heap in
        heap := !heap + i (*4*i*);
        global_data := (x1, location, i, ini)::(!global_data);
    | Syntax.Let((x2, t), e3, e4) ->
      cope_let x2 e3;
      cope_let x1 e4;
    | Syntax.Tuple(yts) as ts ->
      let tuplesize = List.length yts in
      let location = !heap in
        heap := !heap + tuplesize (*4*tuplesize*);
        global_data := (x1, location, tuplesize, ts)::(!global_data);
    | _ -> ()
        in
  match e with
    | Syntax.Let((x, t), e1, e2) ->
      cope_let x e1; g e2
    | _ -> ()

and init = function
  | Syntax.Int(i) -> Syntax.Int(i)
  | Syntax.Float(d) -> Syntax.Float(d)
  | Syntax.Neg(i) -> Syntax.Neg(i)
  | Syntax.Array (Syntax.Int(i), e) ->
    let ini = init e in
    let id =
      match ini with
        | Syntax.Float(d) -> Id.gentmp (Type.Array(Type.Float))
        | _ -> Id.gentmp (Type.Array(Type.Int)) in
    let location = !heap in
      heap := !heap + i (*4 * i*);
      global_data := (id, location, i, ini)::(!global_data);
      Syntax.Int(location)
  | Syntax.Tuple(yts) as ts ->
    let tuplesize = List.length yts in
    let id = Id.gentmp (Type.Tuple([])) in
    let location = !heap in
      heap := !heap + tuplesize (*4 * tuplesize*);
      global_data := (id, location, tuplesize, ts)::(!global_data);
      Syntax.Var(id)
  | Syntax.Var(x) as v -> v
  | Syntax.Get(_, _) as g -> g
  | _ -> failwith (Printf.sprintf "global_init is failed\n";)

let f e =
  g e;
  (!global_data, !heap)
