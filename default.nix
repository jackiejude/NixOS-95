{ config, pkgs, host, lib, inputs, userconf, ... }:
let
  userVars = import ./user-vars.nix;
  inherit (userVars) username;
in {
  imports = [ <home-manager/nixos> ];
  services.xserver.xfce.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
    xfce.xfwm4
    xfce.xfce4-panel
    xfce.xfce4-session
    xfce.xfce4-settings
    xfce.thunar
    xfce.mousepad
    xfce.xfce4-terminal
    xfce.xfce4-appfinder
    xfce.xfce4-power-manager
    xfce.xfce4-notifyd
    xfce.xfce4-whiskermenu-plugin
    xfce.gigolo
    xfce.xfce4-screenshooter
    xfce.parole
  ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "delme-HMbackup";
    users.${username} = import ./XFCE-retro {
      inherit config pkgs;
    };
  };
}
