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
  mod_name="Better Dialogue Controls";
  mod_description="Ever pick the wrong item in a dialogue with a NPC? This mod aims to fix some annoyances with the way keyboard and mouse selection works in the dialogue interface.";
  mod_version="1.2";
  mod_id="1429";
  file_id="11022";
  sha256 = "sha256-z60dj4Wc5qAZyBf2s5gOrb01ROfub9nFkSnmIocOXPc="; 
  bith = "dc1e8def55d4bffa22fab6c39d9fb389d7e2b1da";
}