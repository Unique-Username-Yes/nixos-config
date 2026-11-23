{ config, lib, pkgs, ... }:
let
  src = "${config.home.homeDirectory}/nixos-config/home/programs/hyprland/config";
  live = p: config.lib.file.mkOutOfStoreSymlink "${src}/${p}";
in 
{
  home.packages = with pkgs; [ 
    hyprpaper 
    hyprlock 
    grimblast 
  ];

  xdg.configFile = {
    "hypr/hyprland.lua".source = live "hyprland.lua";
  };
}
