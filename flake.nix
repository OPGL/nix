{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf-config = {
      url = "github:opgl/nvf-config";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
    stylix.url = "github:danth/stylix";
  };
  outputs = {nixpkgs, ...} @ inputs: let
    inherit (nixpkgs) lib;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations.desktop = lib.nixosSystem {
      inherit pkgs;
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/desktop
        ./modules/common
        ./modules/desktop
        inputs.stylix.nixosModules.stylix
      ];
    };
    formatter.${system} = pkgs.alejandra;
  };
}
