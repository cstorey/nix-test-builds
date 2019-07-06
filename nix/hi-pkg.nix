{ rustPlatform, ... }:
rustPlatform.buildRustPackage rec {
    name = "hi";
    version = "0.0";

    buildInputs = [ ];

    src = ./..;

    cargoVendorDir = "vendor";
}