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
  mod_author="Ahzaab";
  mod_name="More Hud Inventory Edition";
  mod_description="Adds more information to the HUD about the currently targeted object and enemies. Such as ingredients, weapon effects, potions, read books, v/w, enemy level, etc";
  mod_version="5.2.2.0 AE";
  mod_id="18619";
  file_id="336167";
  sha256 = "sha256-fS5BIpCoXNVNZGykvIEEppZJwc0lg1VJzBJj7lN5tVk="; 
  bith = "cb899c99b38cf2d3a5d8bd70cb213f68ed9b921e";
}