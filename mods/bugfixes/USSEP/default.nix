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
  mod_name="Unofficial Skyrim Special Edition Patch - USSEP";
  mod_description="A comprehensive bugfixing mod for The Elder Scrolls V: Skyrim - Special Edition. The goal of the Unofficial Skyrim Special Edition Patch (aka USSEP) is to eventually fix every bug with Skyrim Special Edition not officially resolved by the developers to the limits of the Creation Kit and community-developed tools, in one easy-to-install package.";
  mod_version="18 Nov 2023";
  mod_id="266";
  file_id="392477";
  sha256 = "sha256-pjavXj0UjSPUiSwTzCbhc0WNhuKyHKJZG/9oGXaIkFk="; 
  bith = "b495b3bf54fd9f3f73c441b4822545ea59820e57";
}