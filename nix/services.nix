# From https://unix.stackexchange.com/questions/523454/nixos-use-services-on-non-nixos-os-eventually-with-only-user-rights
let
  eval = import <nixpkgs/nixos> {
    configuration = ./configuration.nix;
  };
  pkgs = import <nixpkgs>{};
in pkgs.buildEnv {
  name = "hi";
  paths = [
    eval.config.systemd.user.units."hi.service".unit
  ];
}