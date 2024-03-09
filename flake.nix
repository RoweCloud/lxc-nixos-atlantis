{
  description = "Atlantis on NixOS LXC Container for Proxmox";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }@inputs:

  let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      atlantis = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };

        modules = [
          "${nixpkgs}/nixos/modules/virtualisation/proxmox-lxc.nix"
          ./nixos/configuration.nix
        ];
      };
    };
  };
}
