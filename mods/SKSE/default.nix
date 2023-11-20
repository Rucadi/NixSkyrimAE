{
  pkgs,
  defaultModBuilder ? ../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../nixutils/downloaders/url,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
pkgs.callPackage defaultModBuilder rec {
  inherit mod_downloader modlist_name nexus_mods_cookie;
  mod_author="skse.silverlock.org";
  mod_name="Unofficial Skyrim Special Edition Patch - USSEP";
  mod_description="Skyrim Script Extender 64";
  mod_version="2_02_03";
  mod_id="-1";
  file_id="https://skse.silverlock.org/beta/skse64_${mod_version}.7z";
  sha256 = "073hd8814qkhhcywy241mjqyjf7l7niwqy1zg301da19qsycxnag"; 
  bith = "5a71754296291687544be03e7ce8b6eda86f5e84";
  mod_root_folder="skse64_${mod_version}";
}
