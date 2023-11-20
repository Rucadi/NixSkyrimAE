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
  mod_author="SkyUI Team";
  mod_name="SkyUI";
  mod_description="Elegant, PC-friendly interface mod with many advanced features.";
  mod_version="5.2SE";
  mod_id="12604";
  file_id="35407";
  sha256 = "sha256-UFiI/Lgp2c9WsEATduqkUISPqGKeJmyi1gaMnhNu2Nk="; 
  bith = "2359195f11d6f229715b2c8b664f26b8cbb6a388";
}