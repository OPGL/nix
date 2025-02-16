{
  inputs,
  pkgs,
  ...
}: let
  inherit (pkgs) system;
  inherit (inputs.nvf-config.packages.${system}) neovim;
in {
  home-manager.users.opgl.home = {
    packages = [neovim];
    sessionVariables = {
      "EDITOR" = "nvim";
      "VISUAL" = "$EDITOR";
    };
  };
}
