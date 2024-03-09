{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  imports = [];

  nix.settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };

  pkgs.config.allowUnfree = true;

  environment.systemPackages = [
    pkgs.atlantis
    pkgs.terraform
  ];

  system.stateVersion = "23.11";
}
