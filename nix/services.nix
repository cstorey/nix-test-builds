# From https://unix.stackexchange.com/questions/523454/nixos-use-services-on-non-nixos-os-eventually-with-only-user-rights
let
  pkgs = import <nixpkgs> { };
  hi = pkgs.callPackage ./hi-pkg.nix {};
  unit = pkgs.writeTextFile {
    name = "hi-service";
    destination = "/lib/systemd/user/hi.service";

    text = ''
    [Unit]
    Description=Hi!

    [Service]
    Environment=RUST_LOG=hook_listener=debug,actix_web=info,warn
    Environment=PATH=${hi}/bin
    ExecStart=${hi}/bin/hi

    [Install]
    WantedBy=default.target
    '';
  };
in
  unit