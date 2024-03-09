{
  description = "Atlantis on NixOS LXC Container for Proxmox";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }:

  {
    nixosConfigurations = {
      atlantis = nixpkgs.lib.nixosSystem {
        hostSystem = "x86_64-linux";

        modules = [
          "${nixpkgs}/nixos/modules/virtualisation/proxmox-lxc.nix"
          ./nixos/configuration.nix
        ];
      };
    };
  };
}
