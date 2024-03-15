{ inputs
, lib
, config
, pkgs
, ...
}: {

  imports = [ ];

  nix.settings = {
    experimental-features = "nix-command flakes";
    auto-optimise-store = true;
  };

  nixpkgs.config.allowUnfree = true;

  users.users.root.initialHashedPassword = "";

  system.stateVersion = "23.11";
}
