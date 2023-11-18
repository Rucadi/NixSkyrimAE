{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
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
  torrent_magnet = "magnet:?xt=urn:btih:28bf4501579b4de5fe94f3fb56386bf7dc421ca4&dn=Unofficial%20Skyrim%20Special%20Edition%20Patch-266-4-2-9a-1685216241.7z";
}