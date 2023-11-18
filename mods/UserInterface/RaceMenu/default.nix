{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
pkgs.callPackage defaultModBuilder {
  inherit mod_downloader;
  inherit nexus_mods_cookie;
  mod_author="expired6978";
  mod_name="RaceMenu";
  mod_description="Complete overhaul to the character creation menu including new customization features such as multiple RGBA warpaints, body paints, hand paint, and foot paints. (Requires SKSE)";
  mod_version="Architecture 9.0";
  mod_id="19080";
  file_id="327229";
  sha256 = "sha256-ZhaW+K4cZ4/kw3hL3oDpftvK4JPVtgLt3iNG8qmtM6k="; 
  torrent_magnet = "NONE";
}