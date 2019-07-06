with import <nixpkgs> { };
rustPlatform.buildRustPackage rec {
  name = "hi";
  version = "0.0";

  buildInputs = [ openssl pkgconfig ];

  src = ./.;

  cargoVendorDir = "vendor";
}
