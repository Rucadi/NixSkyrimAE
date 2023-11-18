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
        SkyrimAE =  import ./. { inherit system pkgs; };
        #SkyrimSE = forAllSystems (system: import ./. { inherit system; });
        #SkyrimLE = forAllSystems (system: import ./. { inherit system; });
    };
}
