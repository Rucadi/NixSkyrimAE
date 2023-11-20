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
  mod_author="";
  mod_name="Alternate Start";
  mod_description="Live Another Life provides an alternative means to start the game for those who do not wish to go through the lengthy intro sequence at Helgen.";
  mod_version="4.2.1";
  mod_id="272";
  file_id="400276";
  sha256 = "sha256-9bGjs2KCZifktMCP2Jmhk54srFcsOE6XquVHiZg/oUc="; 
  bith = "10429e3b0e7a2cea4bb98514bdc8ce69cff97939";
}