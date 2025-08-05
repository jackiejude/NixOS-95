{ config, pkgs, lib, ... }:
let
  userVars = import ./user-vars.nix;
  inherit (userVars) username;
in {
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "25.05";
  imports = [ ./XFCE-retro ];
}
