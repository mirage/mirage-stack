#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let metas = [
  Pkg.meta_file ~install:false "pkg/META";
  Pkg.meta_file ~install:false "pkg/META.lwt";
]

let opams =
  let opam no_lint name =
    Pkg.opam_file ~lint_deps_excluding:(Some no_lint) ~install:false name
  in
  [
  opam ["lwt"; "mirage-stack"; "ipaddr"; "cstruct"] "opam";
  opam ["fmt"; "mirage-device"; "mirage-protocols"] "mirage-stack-lwt.opam";
  ]

let () =
  Pkg.describe ~opams ~metas "mirage-stack" @@ fun c ->
  match Conf.pkg_name c with
  | "mirage-stack" ->
    Ok [ Pkg.lib "pkg/META";
         Pkg.lib ~exts:Exts.interface "src/mirage_stack" ]
  | "mirage-stack-lwt" ->
    Ok [ Pkg.lib "pkg/META.lwt" ~dst:"META";
         Pkg.lib ~exts:Exts.interface "src/mirage_stack_lwt" ]
  | other ->
    R.error_msgf "unknown package name: %s" other
