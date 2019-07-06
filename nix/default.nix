let
    pkgs = import <nixpkgs> { };
in
pkgs.rustPlatform.buildRustPackage rec {
    name = "hi";
    version = "0.0";

    buildInputs = [ ];

    src = ./.;

    cargoVendorDir = "vendor";
}