{
  pkgs,
  mod_author,
  mod_name,
  mod_description,
  mod_version,
  game_id ? "1704",#skyrim se default
  mod_id,
  file_id,
  sha256,
  torrent_magnet,
  game_name ? "skyrimspecialedition", #skyrim se default
  nexus_mods_cookie,
  mod_downloader,
  modlist_name ? "skyrim-se-modding"
}:

pkgs.stdenv.mkDerivation rec {
  phases = [ "unpackPhase" "installPhase" "FixupPhase"]; 

  pname = "${mod_name}";
  version = "${mod_version}";

  src = pkgs.callPackage mod_downloader {
    inherit nexus_mods_cookie;
    mod_id="${mod_id}";
    file_id="${file_id}";
    sha256 = "${sha256}";
    torrent_magnet = "${torrent_magnet}";
  };

  nativeBuildInputs = [pkgs.p7zip pkgs.torrenttools pkgs.rsync];
  unpackPhase = ./smartUnpacker.sh;



  installPhase = ''
    echo $(ls) 2>&1
    outdir=$out/${modlist_name}
    mkdir -p $outdir/Data
    rm env-vars
  

    if [ -d Data ]; then
      cp -R Data/ $outdir/Data 
    else
      cp -R * $outdir/Data/
    fi
  '';

  #override to remove files etc... to avoid conflicts
  FixupPhase = '':'';

  meta = with pkgs.lib; {
    description = mod_description;
    author = mod_author;
  };
}

