let
    pkgs = import <nixpkgs> { };
    hipkg = import ./hi-pkg.nix;
in
    hipkg pkgs