# From https://unix.stackexchange.com/questions/523454/nixos-use-services-on-non-nixos-os-eventually-with-only-user-rights
{config, pkgs, ... }:

{
  # You can actually remove the user, and still use it
  # as a user if you link it in ~/.config/systemd/user/
  # (do not forget to remove the `user` it in anything.nix
  # as well)
  systemd.user.services.testservice = {
   description = "Some test service";
   script = "while true; do echo 'YES?'; sleep 1; done";
   # Or:
   # serviceConfig = {
   #   ExecStart = "${pkgs.bash}/bin/bash -c \"while true; do echo 'YES'; sleep 1; done\"";
   # };
   wantedBy = [ "default.target" ];
 };
}