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
      ];
    };
    formatter.${system} = pkgs.alejandra;
  };
}
