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
  mod_author="ecirbaf";
  mod_name="Better MessageBox Controls";
  mod_description="Navigate all message boxes with the Left/Right and Activate (E) keys. Also fixes the clickable area of buttons so they are easier to select with the mouse.";
  mod_version="1.2";
  mod_id="1428";
  file_id="11023";
  sha256 = "sha256-CnNkMpnb2HfNwHsWkyl1u+TPw7j0vtbD/4FFlAYcLi0="; 
  bith = "9766426d9208a5a667a02e65f028c9b9c2539cf2";
}