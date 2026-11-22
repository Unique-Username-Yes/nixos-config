{
  description = "Minimal flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixos-Desktop = nixpkgs.lib.nixosSystem {
        modules = [ 
          ./hosts/desktop/configuration.nix 
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.mero = import ./home/home.nix;
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}     
