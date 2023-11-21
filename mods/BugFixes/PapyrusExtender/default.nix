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
  mod_name="Papyrus Extender";
  mod_description="Collection of engine bug fixes and tweaks. SKSE plugin.";
  mod_version="something";
  mod_id="22854";
  file_id="410639";
  sha256 = "sha256-MDp8eUdJWXsmqx13l83kF7WLogu2alxv1aTF73+6ucU="; 
  bith = "ba0ef7840d5bfb8e146bebaef5a600d475175051";
}).overrideAttrs (oldAttrs: {
  patchPhase = '':'';
  installPhase = ''
  outdir=$out/${modlist_name}
  mkdir -p "$outdir/Data/"
  cd powe*
  cp -r AE/* "$outdir/Data/"
  cp -r Required/Scripts "$outdir/Data/Scripts"
  cp -r Required/Source "$outdir/Data/Source"
  '';
})