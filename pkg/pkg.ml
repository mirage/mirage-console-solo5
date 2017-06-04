#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  let lint_deps_excluding = Some ["mirage-solo5" ] in
  let opams = [ Pkg.opam_file "opam" ~lint_deps_excluding ] in
  Pkg.describe ~opams "mirage-console-solo5" @@ fun c ->
  Ok [ Pkg.mllib "src/mirage-console-solo5.mllib"; ]
