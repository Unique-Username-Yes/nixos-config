{ config, lib, pkgs, ... }:
let
  cfg = config.my.wofi;
  src = "${config.home.homeDirectory}/nixos-config/home/programs/wofi/config";
  live = p: config.lib.file.mkOutOfStoreSymlink "${src}/${p}";
in 
{
  home.packages = [ pkgs.wofi ];

  xdg.configFile = {
    "wofi/config".source    = live "config";
    "wofi/style.css".source = live "style.css";
  };
}
