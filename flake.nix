{
  description = "A very basic flake";
  inputs = {
      nixpkgs.url      = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs}:
    let
      system="x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in 
    {
      USSEP = pkgs.callPackage ./mods/bugfixes/USSEP {};
      #packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
    };
  }
