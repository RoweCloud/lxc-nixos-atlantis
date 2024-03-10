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

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    pkgs.atlantis
    pkgs.terraform
    pkgs.htop
  ];

  system.stateVersion = "23.11";
}