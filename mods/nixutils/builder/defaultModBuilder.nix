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
  mod_downloader
}:

pkgs.stdenv.mkDerivation rec {

  pname = "${mod_name}";
  version = "${mod_version}";

  src = pkgs.callPackage mod_downloader {
    inherit nexus_mods_cookie;
    mod_id="${mod_id}";
    file_id="${file_id}";
    sha256 = "${sha256}";
    torrent_magnet = "${torrent_magnet}";
  };

  nativeBuildInputs = [pkgs.p7zip pkgs.torrenttools];
  unpackPhase = ''
      7z x -aoa ${src}
      '';


  installPhase = ''
    mkdir -p $out/skyrim-se-modded/Data
    rm env-vars
    cp -r * $out/skyrim-se-modded/Data/
  '';

  meta = with pkgs.lib; {
    description = mod_description;
    author = mod_author;
  };
}

