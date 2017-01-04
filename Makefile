all:
	ocaml pkg/pkg.ml build -n mirage-stack -q
	ocaml pkg/pkg.ml build -n mirage-stack-lwt -q

clean:
	ocaml pkg/pkg.ml clean -n mirage-stack -q
	ocaml pkg/pkg.ml clean -n mirage-stack-lwt -q
