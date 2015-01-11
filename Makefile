test: build_test
	@./test && make clean

build_test: sandbox.ml test.ml
	@ocamlfind ocamlc -o test -package oUnit -linkpkg -g $?

clean:
	@rm -f *.{cmi,cmo,cmx,o} oUnit* test

.PHONY: test
