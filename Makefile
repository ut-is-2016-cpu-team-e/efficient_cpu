# Sumii's Makefile for Min-Caml (for GNU Make)
#
# ack.ml鐃淑どのテワ申鐃夙プワ申鐃緒申鐃緒申鐃緒申鐃緒申test/鐃緒申鐃術意わ申鐃緒申make do_test鐃緒申鐃渋行わ申鐃緒申鐃夙￥申
# min-caml鐃緒申ocaml鐃叔ワ申鐃緒申鐃術ワ申鐃暑・鐃渋行わ申鐃緒申鐃緒申鐃縮わ申鐃緒申動鐃緒申鐃緒申鐃俊わ申鐃殉わ申鐃緒申

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top
## [鐃緒申分鐃淑緒申鐃緒申鐃緒申鐃術わ申鐃緒申]
## 鐃緒申OCamlMakefile鐃緒申鐃重わ申GNU Make鐃塾バワ申(?)鐃叔常申鐃塾よう鐃緒申鐃緒申鐃緒申鐃緒申必鐃緒申(??)
## 鐃緒申OCamlMakefile鐃叔わ申debug-code鐃緒申native-code鐃塾わ申鐃曙ぞ鐃緒申鐃緒申
##   .mli鐃緒申鐃緒申鐃緒申鐃術ワ申鐃暑さ鐃緒申鐃銃わ申鐃殉わ申鐃塾で￥申両鐃緒申鐃夙わ申default:鐃塾縁申鐃春わ申鐃緒申鐃緒申鐃緒申鐃緒申
##   鐃緒申make鐃緒申鐃祝￥申.mli鐃緒申鐃術刻申鐃緒申鐃緒申鐃銃わ申鐃緒申鐃塾で￥申.ml鐃緒申鐃銃ワ申鐃緒申鐃術ワ申鐃暑さ鐃緒申鐃緒申
clean:: nobackup

# 鐃緒申鐃盾し鐃緒申鐃緒申鐃緒申鐃緒申造鐃緒申鐃緒申鐃初、鐃緒申鐃緒申鐃祝刻申鐃緒せ鐃緒申鐃術わ申鐃緒申
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parser.mly lexer.mll typing.mli typing.ml global_alloc.mli global_alloc.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml csv.mli csv.ml cse.mli cse.ml fmadd.mli fmadd.ml\
closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml \
outsyn.ml out_kNormal.ml out_iter.ml out_closure.ml out_asm.ml\
main.mli main.ml

# 鐃緒申鐃銃ワ申鐃夙プワ申鐃緒申鐃緒申鐃準が鐃緒申鐃緒申鐃緒申鐃初、鐃緒申鐃緒申鐃緒申鐃緒申鐃巡す
TESTS = print sum-tail test1 sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat

do_test: $(TESTS:%=test/%.cmp)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp)

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$*
test/%: test/%.s libmincaml.S stub.c
	$(CC) $(CFLAGS) -m32 $^ -lm -o $@
test/%.res: test/%
	$< > $@
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@

min-caml.html: main.mli main.ml id.ml m.ml s.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
		alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
		inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml csv.mli csv.ml\
		closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
		simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
