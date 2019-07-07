{ rustPlatform, writeTextFile, lib, ... }:
let
    pkg = rustPlatform.buildRustPackage rec {
        name = "hi";
        version = "0.0";
        buildInputs = [ ];
        src = lib.sourceByRegex ./.. [
            "^Cargo\..*$"
            "src" "src.*"
        ];
        cargoSha256 = "0jacm96l1gw9nxwavqi1x4669cg6lzy9hr18zjpwlcyb3qkw9z7f";
        dontStrip = true;
        doCheck = false;
    };
in
    pkg
