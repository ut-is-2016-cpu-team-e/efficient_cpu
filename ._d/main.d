main.cmo : virtual.cmi typing.cmi simm.cmi regAlloc.cmi parser.cmi \
    outsyn.cmo out_kNormal.cmo out_iter.cmo out_closure.cmo out_asm.cmo m.cmo \
    lexer.cmo kNormal.cmi inline.cmi id.cmo emit.cmi elim.cmi constFold.cmi \
    closure.cmi beta.cmi assoc.cmi alpha.cmi main.cmi
main.cmx : virtual.cmx typing.cmx simm.cmx regAlloc.cmx parser.cmx \
    outsyn.cmx out_kNormal.cmx out_iter.cmx out_closure.cmx out_asm.cmx m.cmx \
    lexer.cmx kNormal.cmx inline.cmx id.cmx emit.cmx elim.cmx constFold.cmx \
    closure.cmx beta.cmx assoc.cmx alpha.cmx main.cmi
