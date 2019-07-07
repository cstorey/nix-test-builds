{ rustPlatform, writeTextFile, ... }:
let pkg = rustPlatform.buildRustPackage rec {
        name = "hi";
        version = "0.0";
        buildInputs = [ ];
        src = ./..;
        cargoVendorDir = "vendor";
    };
in
    pkg