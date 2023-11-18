{
  pkgs,
    downloader ? ../../nixutils/downloaders/nexusmods
}:
pkgs.stdenv.mkDerivation rec {
  pname = "USSEP";
  version = "";

  src = pkgs.callPackage downloader {
    mod_id="266";
    file_id="392477";
    sha256 = "sha256-pjavXj0UjSPUiSwTzCbhc0WNhuKyHKJZG/9oGXaIkFk="; # You need to replace this with the actual hash of the downloaded file.
  };

  nativeBuildInputs = [pkgs.p7zip];

  unpackPhase = "7z x $src";

  installPhase = ''
    mkdir -p $out/skyrim-se-modded/Data
    cp -r * $out/skyrim-se-modded/Data/
  '';

  meta = with pkgs.lib; {
    description = "Skyrim USSEP";
    #license = licenses.MIT;
  };
}

