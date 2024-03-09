{
  description = "Atlantis on NixOS LXC Container for Proxmox";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }:
  let system = "x86_64-linux";

  pkgs = import nixpkgs {
    inherit system;
    config = {
      allowUnfree = true;
    };
  };

  in
  {
    nixosConfigurations = {
      atlantisNixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit system; };

        modules = [
          ./nixos/configuration.nix
        ];
      };
    };
  };
}
