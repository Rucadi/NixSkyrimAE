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
  mod_author="Linthar";
  mod_name="More Informative Console";
  mod_description="This mod edits the UI to show a great deal of additional information on npcs, items, and other objects when the console is opened, similar to the way MFG console worked for Oldrim";
  mod_version="1.1.0 AE";
  mod_id="19250";
  file_id="319359";
  sha256 = "sha256-kH7vUub4wyBbNGI+aWTUB7j+q707HJjKg5yXwX1LXTw="; 
  bith = "9ef4ec50b7bb18f9ce360af7d0f768d5ce7153f0";
}