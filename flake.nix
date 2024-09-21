{
  description = "Home Manager configuration of john1917";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = { 
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    swaymonad = {
    url = "github:nicolasavru/swaymonad";
    inputs.nixpkgs.follows = "nixpkgs"; # not mandatory but recommended
  };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, swaymonad, ... }:
  {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = [ 
          ./configuration.nix
          home-manager.nixosModules.home-manager

          ({self, pkgs, ... }: {
            environment.systemPackages = with pkgs; [
              swaymonad.defaultPackage.x86_64-linux
            ];
          })
          {
            home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.john1917 =  import ./home.nix; 
            extraSpecialArgs = { inherit inputs; };
           };
          }
        ];
      };
    };
  };
}
