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

  mod_author="Steffen Maschmeier";
  mod_name="Unofficial Skyrim Special Edition Patch - USSEP";
  mod_description="High Res Textures for cities, dungeons, clutter, armors, landscapes and much more. Going towards 2000 files, way more to come !
This mod has over a thousand hours of work put into it. If you enjoy my work please consider supporting me at Patreon and Kofi.";
  mod_version="Landscape 9.0";
  mod_id="2347";
  file_id="321906";
  sha256 = "sha256-shoXBBdA5H9cplkY978JhLV4QaCgqBKrmxwM2pC5Kvk="; 
  bith = "dd4835bf100e0579b39f11ec6abe1f59ebb0b06b";
}