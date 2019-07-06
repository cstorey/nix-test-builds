with import <nixpkgs> { };
rustPlatform.buildRustPackage rec {
  name = "hi";
  version = "0.0";

  buildInputs = [ openssl pkgconfig ];

  src = ./.;

  cargoSha256 = "0jacm96l1gw9nxwavqi1x4669cg6lzy9hr18zjpwlcyb3qkw9z7f";
}
