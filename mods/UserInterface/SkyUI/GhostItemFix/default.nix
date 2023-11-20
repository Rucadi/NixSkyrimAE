{
  pkgs,
  defaultModBuilder ? ../../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
pkgs.callPackage defaultModBuilder {
  inherit mod_downloader modlist_name nexus_mods_cookie;
  mod_author="SkyUI Team and EdmanSA";
  mod_name="SkyUI - Ghost Item Bug Fix";
  mod_description="Fixes the issue where SkyUI favourite groups may not equip correctly under certain circumstances, such as after upgrading items.";
  mod_version="1.0.0";
  mod_id="49106";
  file_id="232098";
  sha256 = "sha256-ahLobqyjnGDh6FoLUjfkrrjepuWOrLXnrjpEVXPCqHQ="; 
  bith = "b4ac12f2e65ab40e2223ff4db297dc89aebdbbe9";
}