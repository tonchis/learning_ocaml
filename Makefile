test: sandbox.ml
	ocamlfind ocamlc -o $@ -package oUnit -linkpkg -g $< $@.ml

clean:
	rm -f *.{cmi,cmo,cmx,o}
	rm -f oUnit*
	rm -f test

.PHONY: test
