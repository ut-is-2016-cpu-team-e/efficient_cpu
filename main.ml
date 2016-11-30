let limit = ref 1000

let rec iter n e = (* 鐃緒申適鐃緒申鐃緒申鐃緒申鐃薯くりか鐃緒申鐃緒申 (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

let confirm_global gd =
  List.map (fun (x, h, i, _) -> Printf.fprintf stdout "name : %s\nheap : %d\nnumber : %d\n" x h i ;) gd

let lexbuf outchan outmsynchan out_kNormal_chan out_alpha_chan out_iter_chan out_closure_chan out_simm_chan out_regalloc_chan l global = (* 鐃出ッフワ申鐃薯コワ申鐃術ワ申鐃暑し鐃銃ワ申鐃緒申鐃緒申鐃粛ワ申鐃舜緒申鐃熟わ申鐃緒申 (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let par_and_lex = Parser.exp Lexer.token l in
  let global_par_and_lex = Parser.exp Lexer.token global in
  Outsyn.outsyntax outmsynchan par_and_lex 0;
  let (global_data, heap) = Global_alloc.f global_par_and_lex in
  let kNormal_and_Typing = KNormal.f global_data (Typing.f par_and_lex) in
  confirm_global global_data;
  Out_kNormal.out_kNormal out_kNormal_chan kNormal_and_Typing 0;
  let alpha = Alpha.f kNormal_and_Typing in
  Out_kNormal.out_kNormal out_alpha_chan alpha 0;
  let after_iter= iter !limit alpha in
  Out_iter.out_iter out_iter_chan after_iter 0;
  let clos= Closure.f after_iter in
  Out_closure.out_top_and_closure out_closure_chan clos;
  let simm_and_virtual = Simm.f (Virtual.f clos) in
  Out_asm.out_top_and_asm out_simm_chan simm_and_virtual;
  let after_regalloc = RegAlloc.f simm_and_virtual in (* this is wrong -> solved*)
  Out_asm.out_top_and_asm out_regalloc_chan after_regalloc;
  Emit.f outchan global_data heap after_regalloc

let string s global = lexbuf stdout stdout stdout stdout stdout stdout stdout stdout (Lexing.from_string s) (Lexing.from_string global)(* 文鐃緒申鐃緒申鐃薯コワ申鐃術ワ申鐃暑し鐃緒申標鐃緒申鐃緒申鐃熟わ申表鐃緒申鐃緒申鐃緒申 (caml2html: main_string) *)

let file f global = (* 鐃春ワ申鐃緒申鐃緒申鐃薯コワ申鐃術ワ申鐃暑し鐃銃フワ申鐃緒申鐃緒申鐃祝緒申鐃熟わ申鐃緒申 (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let global_inchan = open_in (global ^ ".ml") in
  let outmsynchan = open_out (f ^ "-Syntax.t") in
  let out_kNormal_chan = open_out (f ^ "-kNormal.t") in
  let out_alpha_chan = open_out (f ^ "-alpha.t") in
  let out_iter_chan = open_out (f ^ "-iter.t") in
  let out_closure_chan = open_out (f ^ "-closure.t") in
  let out_simm_chan = open_out(f ^ "-simm.t") in
  let out_regalloc_chan = open_out(f^"-regAlloc.t") in
  let outchan = open_out (f ^ ".s") in
  try
    lexbuf outchan outmsynchan out_kNormal_chan out_alpha_chan out_iter_chan out_closure_chan out_simm_chan out_regalloc_chan (Lexing.from_channel inchan) (Lexing.from_channel global_inchan);
    close_in inchan;
    close_in global_inchan;
    close_out outmsynchan;
    close_out out_kNormal_chan;
    close_out out_alpha_chan;
    close_out out_iter_chan;
    close_out out_closure_chan;
    close_out out_simm_chan;
    close_out out_regalloc_chan;
    close_out outchan;
  with e -> (close_in inchan; close_in global_inchan; close_out outmsynchan; close_out out_kNormal_chan; close_out out_alpha_chan; close_out out_iter_chan; close_out out_closure_chan; close_out outchan; close_out out_simm_chan; close_out out_regalloc_chan; raise e)

let () = (* 鐃緒申鐃緒申鐃緒申鐃初コ鐃緒申鐃術ワ申鐃緒申鐃塾実行わ申鐃緒申鐃熟わ申鐃緒申鐃緒申 (caml2html: main_entry) *)
  let files = ref [] in
  let globalfiles = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-global", Arg.String(fun s -> globalfiles := !globalfiles @ [s]), "global files are accepted")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f (List.hd !globalfiles)))
    !files
