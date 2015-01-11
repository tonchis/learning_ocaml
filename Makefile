test: build_test
	@./test && make clean

build_test: sandbox.ml
	@ocamlfind ocamlc -o test -package oUnit -linkpkg -g $< test.ml

clean:
	@rm -f *.{cmi,cmo,cmx,o}
	@rm -f oUnit*
	@rm -f test

.PHONY: test
