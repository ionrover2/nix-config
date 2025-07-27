{
  description = "My nixos configuration and other utilities.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{ self,nixpkgs, home-manager }:
    {

      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem { modules = [ ./nixos ]; };
      };
    };
}
