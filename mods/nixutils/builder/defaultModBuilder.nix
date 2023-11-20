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
  bith,
  torrent_extra_trackers  ? "-a  udp://tracker.opentrackr.org:1337/announce -a   https://tracker2.ctix.cn:443/announce -a    https://tracker1.520.jp:443/announce -a    udp://opentracker.i2p.rocks:6969/announce -a    udp://open.tracker.cl:1337/announce -a    udp://open.demonii.com:1337/announce -a    udp://tracker.openbittorrent.com:6969/announce -a    http://tracker.openbittorrent.com:80/announce -a    udp://open.stealth.si:80/announce -a    udp://exodus.desync.com:6969/announce -a    udp://tracker.torrent.eu.org:451/announce -a    udp://explodie.org:6969/announce -a    udp://tracker1.bt.moack.co.kr:80/announce -a    udp://tracker.theoks.net:6969/announce -a    udp://tracker.moeking.me:6969/announce -a    udp://tracker-udp.gbitt.info:80/announce -a    udp://p4p.arenabg.com:1337/announce -a    udp://movies.zsw.ca:6969/announce -a    https://tracker.gbitt.info:443/announce -a    http://tracker.ipv6tracker.org:80/announce",
  game_name ? "skyrimspecialedition", #skyrim se default
  nexus_mods_cookie,
  mod_downloader,
  modlist_name,
  mod_root_folder ? "."
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
  };

  nativeBuildInputs = [pkgs.p7zip pkgs.torrenttools pkgs.rsync pkgs.mktorrent pkgs.torrenttools pkgs.bash];
  unpackPhase = ''
  
    get_real_name() {
        folder_name=$1
        real_name=$(find . -maxdepth 1 -type d -iname "$folder_name" -printf "%f\n")
        echo "$real_name"
    }

    rename_if_exists()
    {
      folder="$1"
      real_name=$(get_real_name "$folder")
      if [ "$real_name" == "$folder" ]; then
          return 0
      fi
      if [ "$real_name" != "" ]; then
          mv "$real_name" "$folder"
      fi
    }
 
    7z x -aoa $src
    
    if [ "${mod_root_folder}" != "." ]; then
      mv ${mod_root_folder}/* .
      rm -rf ${mod_root_folder}
    fi


    rename_if_exists Data
    
    if [ -d "Data" ]; then
      pushd Data
    else 
      pushd .
    fi
    rename_if_exists SKSE
    rename_if_exists Docs
    rename_if_exists Interface
    rename_if_exists textures
    rename_if_exists meshes
    rename_if_exists Scripts
    popd

  '';



  installPhase = ''
    echo $(ls) 2>&1
    outdir=$out/${modlist_name}
    mkdir -p $outdir
    rm -rf env-vars
  
    cp -R * $outdir/ 

    
    mkdir -p $out/redist
    ln -s "$(find ${src} -type f -name "*.7z")" $out/redist
    filename=$(ls $out/redist)
    if [ "${bith}" != "NONE" ]; then
      mktorrent -l 22  -o "$out/redist/$filename.torrent"  ${torrent_extra_trackers}  "$(find ${src} -type f -name "*.7z")"
      torrent_magnet=$(torrenttools magnet "$out/redist/$filename.torrent")
      echo "$torrent_magnet" > "$out/redist/$filename.torrent.magnet"
      correct_bith=$(echo "$torrent_magnet" | grep -oP "(?<=xt=urn:btih:)[^&]+")
      if [ "${bith}" != "$correct_bith" ]; then
        echo "incorrect bith for ${mod_name} ${mod_id} ${file_id}, should be: $correct_bith" 2>$1
        exit 2
      fi
    else
      echo "torrenting disabled"
    fi
  '';

  #override to remove files etc... to avoid conflicts
  FixupPhase = '':'';

  meta = with pkgs.lib; {
    description = mod_description;
    author = mod_author;
  };
}

