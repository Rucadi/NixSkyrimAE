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
        SkyrimAE =  import ./. { inherit system pkgs; lib=pkgs.lib; nexus_mods_cookie=""; modlist_name="test"; };
        #SkyrimSE = forAllSystems (system: import ./. { inherit system; });
        #SkyrimLE = forAllSystems (system: import ./. { inherit system; });
    };
}
