# TODO: should probably use a specific channel
{ nixpkgs ? import <nixpkgs> {}
, profile
}:

with nixpkgs;

let
  custom_pkgs = import ./nixpkgs/custom-packages.nix {};
  common_pkgs = [gdb gcc glibc binutils coreutils git meson ninja];
in

mkShell {
  buildInputs = if profile == "build" then
    common_pkgs ++ []
  else if profile == "test" then
    common_pkgs ++ [dmd]
  else
    throw "unknown profile '${profile}', expected 'dmd-build' or 'ldc-build'";
}
