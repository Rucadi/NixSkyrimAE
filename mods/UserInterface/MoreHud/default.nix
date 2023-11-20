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
  mod_name="More Hud";
  mod_description="Adds more information to the HUD about the currently targeted object and enemies. Such as ingredients, weapon effects, potions, read books, v/w, enemy level, etc";
  mod_version="5.2.2.0 AE";
  mod_id="336376";
  file_id="336376";
  sha256 = "sha256-zq7zT/PBTqzw+iIqgslylt3gvmyrhykq9dL7ffRQ7Pw="; 
  bith = "8eb9bde088eb0c3b928ac235219ed946fb3d55a7";
}