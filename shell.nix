{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [ pkgs.xz pkgs.nix pkgs.findutils ];
}