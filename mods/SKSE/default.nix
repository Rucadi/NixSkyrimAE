{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
pkgs.stdenv.mkDerivation rec {
  pname = "skse64";
  version = "2_02_03";
  src = pkgs.fetchurl {
    url = "https://skse.silverlock.org/beta/skse64_${version}.7z";
    sha256 = "073hd8814qkhhcywy241mjqyjf7l7niwqy1zg301da19qsycxnag"; # You need to replace this with the actual hash of the downloaded file.
  };

  nativeBuildInputs = [ pkgs.libarchive pkgs.p7zip];

  unpackPhase = "7z x $src";

  installPhase = ''
    mkdir -p $out/${modlist_name}
    cp -r sks*/* $out/${modlist_name}/
    rm -rf $out/${modlist_name}/src
  '';

  meta = with pkgs.lib; {
    description = "Skyrim Script Extender 64";
  };
}

