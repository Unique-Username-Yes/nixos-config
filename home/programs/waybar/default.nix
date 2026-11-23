{ config, lib, pkgs, ... }:
let
  src = "${config.home.homeDirectory}/nixos-config/home/programs/waybar/config";
in 
{
  home.packages = with pkgs; [ waybar ];

  xdg.configFile."waybar".source = config.lib.file.mkOutOfStoreSymlink src;
}
