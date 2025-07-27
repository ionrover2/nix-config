{
  description = "My nixos configuration and other utilities.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          modules = [
            ./nixos
            home-manager.nixosModules
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.thall = ./home-manager;
            }
          ];
        };
      };
      # Standalone home manager configurations.
      homeConfigurations."thall" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home-manager ];

      };
    };
}
