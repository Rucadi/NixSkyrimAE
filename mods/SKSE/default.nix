{ pkgs, 
  modlist_name,
  ...
}:
let
  inherit (pkgs) lib fetchurl stdenv p7zip;
in
stdenv.mkDerivation rec {
  pname = "skse64";
  version = "2_02_03";

  src = fetchurl {
    url = "https://skse.silverlock.org/beta/skse64_${version}.7z";
    sha256 = "073hd8814qkhhcywy241mjqyjf7l7niwqy1zg301da19qsycxnag";
  };

  nativeBuildInputs =  [p7zip];
  unpackPhase = "7z x $src";

  installPhase = ''
    mkdir -p $out/${modlist_name}
    cp -r sks*/* $out/${modlist_name}/
    rm -rf $out/${modlist_name}/src
  '';

  meta = with lib; {
    description = "Skyrim Script Extender 64";
    license = licenses.MIR;
    url= "https://skse.silverlock.org/"
  };
}

