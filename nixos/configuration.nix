{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };

  system.stateVersion = "23.11";
}
