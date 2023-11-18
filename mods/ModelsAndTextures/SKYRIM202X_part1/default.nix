{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  ...
}:
pkgs.callPackage defaultModBuilder {
  inherit mod_downloader;
  inherit nexus_mods_cookie;
  mod_author="Steffen Maschmeier";
  mod_name="Unofficial Skyrim Special Edition Patch - USSEP";
  mod_description="High Res Textures for cities, dungeons, clutter, armors, landscapes and much more. Going towards 2000 files, way more to come !
This mod has over a thousand hours of work put into it. If you enjoy my work please consider supporting me at Patreon and Kofi.";
  mod_version="Architecture 9.0";
  mod_id="2347";
  file_id="321878";
  sha256 = "sha256-V9vwDcQfKo65FRps7kLpPm7POv+8wb+4NzpGwwvGM2g="; 
  torrent_magnet = "NONE";
}