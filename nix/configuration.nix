# From https://unix.stackexchange.com/questions/523454/nixos-use-services-on-non-nixos-os-eventually-with-only-user-rights
{config, pkgs, ... }:

let
  hi = pkgs.callPackage ./hi-pkg.nix {};
in

  {
    # You can actually remove the user, and still use it
    # as a user if you link it in ~/.config/systemd/user/
    # (do not forget to remove the `user` it in anything.nix
    # as well)
    systemd.user.services.hi = {
      description = "Hi service";
      serviceConfig = {
          ExecStart = "${pkgs.bash}/bin/bash -c \"while true; do ${hi.out}/bin/hi; sleep 1; done\"";
      };
      wantedBy = [ "default.target" ];
  };
}