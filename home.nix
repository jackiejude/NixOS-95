{ config, pkgs, lib, username, ... }:
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "25.05";
  imports = [ ./XFCE-retro ];
}
