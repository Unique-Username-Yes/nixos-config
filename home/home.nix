{ config, pkgs, ... }:
{
  imports = [
    ./programs/hyprland
    ./programs/wofi
    ./programs/waybar
    ./programs/alacritty
    ./programs/fastfetch
    ./programs/nvim
    ./programs/direnv
  ];

  home.username = "mero";
  home.homeDirectory = "/home/mero";
  home.packages = with pkgs; [
    firefox
    tree
  ];

  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config";
    };
  };

  home.stateVersion = "26.05";
}
