{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
(pkgs.callPackage defaultModBuilder {
  inherit mod_downloader modlist_name nexus_mods_cookie;
  mod_author="";
  mod_name="powerofthree's Tweaks";
  mod_description="Collection of engine bug fixes and tweaks. SKSE plugin.";
  mod_version="something";
  mod_id="51073";
  file_id="429459";
  sha256 = "sha256-lQpV04nEtCjUurxhJdmpFbB5ly0J8AeU5al+A2WakJk="; 
  bith = "a50852811ddfae30aa8b30eec71310aa7fe2d03d";
}).overrideAttrs (oldAttrs: {
  patchPhase = '':'';
  installPhase = ''
  outdir=$out/${modlist_name}
  mkdir -p "$outdir/Data/"
  cd powe*
  cp -r AE/* "$outdir/Data/"
  cp -r Required/scripts "$outdir/Data/Scripts"
  cp -r Required/source "$outdir/Data/Source"
  '';
})