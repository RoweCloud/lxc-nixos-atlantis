## [1.1.0](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.5...1.1.0) (2024-03-13)


### 🦊 CI/CD

* Prefix the filename of the template with 'atlantis-' ([7bc54ee](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/7bc54eec670d2d2feb72bf095428f9c5e9b06b84))
* Use basename of build path to correctly generate the new filename ([7d332cb](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/7d332cb873ccf3c12c4c97409509f0664c7dfc59))


### 🚀 Features

* Set empty password for root user by default ([7e45f54](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/7e45f543fc4ea2561e6f0bfb1c1e5272d8714c2f))

## [1.0.5](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.4...1.0.5) (2024-03-10)


### 🦊 CI/CD

* List contents of tarballs directory for debug purposes ([d139e6c](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/d139e6cdf54e69ea28533cafdabe9f464bc39c11))


### 🛠 Fixes

* Use correct step name for publishing artifacts to GitHub release ([5245606](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/524560613e27424ed7d843c347fe7e703646db99))

## [1.0.4](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.3...1.0.4) (2024-03-10)


### 🛠 Fixes

* Trigger new release with updated assets path ([c6b4258](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/c6b42585d9aaff777b2c4dfa7ea2c3197ce85b4c))

## [1.0.3](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.2...1.0.3) (2024-03-09)


### 🦊 CI/CD

* Debugging commands to see why we are not having binaries uploaded to release ([84ab962](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/84ab962e47f2b7b59b21a50d989fb614dc80d93a))


### 🛠 Fixes

* Specify name of directory fprartifacts to be uploaded from ([f441dc4](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/f441dc458ea1c545c0442d90cc241846905377d3))

## [1.0.2](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.1...1.0.2) (2024-03-09)


### 🦊 CI/CD

* Run workflow autoatically on push to main or PR ([3a7e7fd](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/3a7e7fd243f365eb0a68361cce45c25e7de98c10))


### 🛠 Fixes

* Correctly specify paths for artifacts to upload to GH Release ([2c08d31](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/2c08d317374008d851d882993324e96507c9f248))

## [1.0.1](https://github.com/RoweCloud/lxc-nixos-atlantis/compare/1.0.0...1.0.1) (2024-03-09)


### 🦊 CI/CD

* Update semantic-release process to correctly upload tarball to GH Release ([6c19a8c](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/6c19a8c0eab7d61e946e0b392e3f82cc78761a8c))


### 🛠 Fixes

* Added htop to template ([dd29527](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/dd29527875b2c0d144ab33af44e3b028b3944b73))

## 1.0.0 (2024-03-09)


### 🦊 CI/CD

* Added missing reference to module required for semantic-release ([7752954](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/7752954d68ec8836c410b1e820f603a738ddf5b2))
* Incoporated semantic-release into build process ([47abab2](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/47abab26df571ab419df2b75e3255b4ac1434c98))
* Introduce basics of Nix build pipeline ([66e9649](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/66e964979a22e04d2e4a3aba92be986e560235da))
* Update version of magic-nix-cache-action to v4 ([b00dfb6](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/b00dfb6b4aba7df3031841880d2451ab471d5cab))


### Other

* Initial setup of repository & supporting tools ([3488e0f](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/3488e0fe3982ad38923b7acc955e5d50e9ecb8fa))


### 🚀 Features

* Added atlantis package to container template ([9222799](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/92227995cf0300fa30ad4524bc415554990803e5))
* Added terraform package ([7fc59e2](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/7fc59e2c8394c6df5f6fc1edc9d9ec5a8c046400))


### 🛠 Fixes

* Corrected reference to 'nixpgs.config ([de6fb1a](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/de6fb1a98c70cc331b6d2fe7ba9588905b7befb7))
* Corrected typo in 'nixosConfigurations' ([8482258](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/8482258ed32d235c7c288a9767e3bff3b85646e1))
* Define system hostname as 'atlantis' ([79b8d22](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/79b8d220bdce2b385d844e517def3548325eae33))
* removed hardware-cnfiguration.nix reference ([a9ac97a](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/a9ac97a3a11918c98961fc2664368493c71db714))
* Set allowUnfree=true in configuration ([622613a](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/622613a1ddb83bffdbe99220de27a43f35ce9bb0))
* Set system property for flake configuration ([cf80a1c](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/cf80a1c0207c7df9c6a46c99892fc69672115b3f))
* Simplify falke.nix; add reference to proxmox-lxc.nix ([f081bcc](https://github.com/RoweCloud/lxc-nixos-atlantis/commit/f081bccf83b3ef7d8abc2520733a547eb49fbe9d))
