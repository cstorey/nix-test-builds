with import <nixpkgs> { };
rustPlatform.buildRustPackage rec {
  name = "hi";
  version = "0.0";

  buildInputs = [ openssl pkgconfig ];

  src = ./.;

  cargoSha256 = "0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";
}
