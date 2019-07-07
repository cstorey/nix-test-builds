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
        cargoSha256 = "0693p31ngg6qskfgav8w5psxl8gj61j6giicy8kk7aw0gnz5nvql";
        dontStrip = true;
        doCheck = false;
    };
in
    pkg
