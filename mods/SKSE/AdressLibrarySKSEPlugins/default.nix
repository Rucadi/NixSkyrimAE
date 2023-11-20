{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
pkgs.callPackage defaultModBuilder {
  inherit mod_downloader modlist_name nexus_mods_cookie;
  mod_author="";
  mod_name="SKSE Plugins";
  mod_description="";
  mod_version="";
  mod_id="32444";
  file_id="320262";
  sha256 = "sha256-pWo97iVa4CX5JWg50GPwAvlK/9wsKOIYvqG45QPUfoI="; 
  bith = "efc4d10ccaa63c63ef550a3d5d9af814decf8039";
}