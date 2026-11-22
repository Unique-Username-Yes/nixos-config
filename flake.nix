{
  description = "Minimal flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      nixos-Desktop = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/desktop/configuration.nix ];
      };
    };
  };
}     
