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
            mod_author="SSEENgineFixes";
            mod_name="SSEENgineFixes";
            mod_description=" ";
            mod_version=" ";
            mod_id="17230";
            file_id="321815";
            sha256 = "sha256-dM/5rQZpTPgmLfEgvz2W2Bv5SnH+f+akkaDQ8erQj+w="; 
            bith = "cefdbdc099b4abbc2fc62d1e883cc3174c6112b8";
          })
            (pkgs.callPackage defaultModBuilder {
            inherit mod_downloader modlist_name nexus_mods_cookie;
            mod_author="SSEENgineFixes2";
            mod_name=" ";
            mod_description="SSEENgineFixes2";
            mod_version=" ";
            mod_id="17230";
            file_id="181171";
            sha256 = "sha256-qaXJKwaNVE9o1a51TwRTiO/RBV20jznS+4jRJJxnCQ4="; 
            bith = "2b6e331221c83ad3287e41f09791ffdf16aa7f56";
            mod_root_files = "true";
          })];
    ignoreCollisions = true;

}
