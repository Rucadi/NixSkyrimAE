{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie,
  modlist_name,
  ...
}:
pkgs.buildEnv {
     name = "combine";
     paths = [
            (pkgs.callPackage defaultModBuilder {
              inherit mod_downloader modlist_name nexus_mods_cookie;
              mod_author="sattyre";
              mod_name="Unofficial Skyrim Modder's Patch - USMP SE";
              mod_description="A large, community compilation of fixes for bugs, inconsistencies, and errors that can come to light from a modded Skyrim and its DLCs. Curated with both mod-makers and players in mind to aid the in-game experience, and serve as a base so mod authors don't need to keep finding, fixing, and working around the same old problems";
              mod_version="2.6.2a";
              mod_id="49616";
              file_id="431376";
              sha256 = "sha256-z9YnQn4Rxu/ngYTrPRrR9JiOIcBwOfPZLAr0439ixg4="; 
              bith = "fba530daae0f16ac264ebebf43459ccc122e682b";
            })
            (pkgs.callPackage defaultModBuilder {
              inherit mod_downloader modlist_name nexus_mods_cookie;
              mod_author="sattyre";
              mod_name="Unofficial Skyrim Modder's Patch - USMP SE";
              mod_description="A large, community compilation of fixes for bugs, inconsistencies, and errors that can come to light from a modded Skyrim and its DLCs. Curated with both mod-makers and players in mind to aid the in-game experience, and serve as a base so mod authors don't need to keep finding, fixing, and working around the same old problems";
              mod_version="2.6.1";
              mod_id="49616";
              file_id="427155";
              sha256 = "sha256-PGANvcdolNjBXclO41NZCrFMr/9geVq2o/88XtqXuxc="; 
              bith = "ac4603658323f72c320d046ee6600975b309c8d7";
          })
            ];
    ignoreCollisions = true;
}


