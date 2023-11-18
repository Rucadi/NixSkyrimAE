{ 
  pkgs
  ,
  game_id ? "1704"#skyrim se default
  ,
  mod_id ? ""
  ,
  file_id ? ""
  ,
  sha256 ? ""
  ,
  game_name ? "skyrimspecialedition" #skyrim se default
  ,
  cookie ? "__qca=P0-1198028285-1699916024411; member_id=39578925; pass_hash=34bb3af01ded3d21dc2cad09f355458f; _ga=GA1.1.1781797663.1699916025; _ga_N0TELNQ37M=GS1.1.1699916024.1.1.1699916276.0.0.0; cf_clearance=sEmVHIiTJaBeQh_3b_34TP_LCP1aGynRYnv2vcr1pys-1700148685-0-1-446e3b31.ae577ead.136f64d1-0.2.1700148685; token_invalidated_at=2023-11-16T15%3A33%3A23Z; _app_session=fNgdzjcpq0avCZVnN8No4%2FwOYi7UfGB%2Flwr7uocoS8SL5POY5l91NXmYyK0mk33SrSwknB9RNtdMAgkUsZo65NTUEfwRv5Obk6GecR1If0hBu5MzbnX%2F%2B5wwA6v7U%2BYKgb%2Fpdk4Zd36MM%2BATA2%2Fo2DvZ2SYBvQmfHuWnBFgOcGCaDF7xmgTwQgKL7Dsot%2F%2F9KEwPoCB6zsQ3xFL8anArAFNxA1Mz8LXcwUsQuZX7b9Szp3k8XA4SbI3Zmcj6AtFr%2BXUBXScKXzpO0MUntptsve4eUPcCQlTYOGPvYy9bDrzn6rAXT5svS%2B144rInqLIXlc0ousZMhVnJHGfTklTWJ4S3UR0foIwV9a4GYCsGwJbwJAgcv4jMxBipH9rcpZDzw2A3tHp690ZLfdP2QIEAYJxx2t0nOaMEA26Q0U4WLMkFonbxvmekOEFD7MzdhtBEcPfAyVAG4%2BMMiwo9bhxpXCb2S9PSwOBb7n8xclEDZxcikhCLIpgf90Br4IKsJR2k5RR7Mmdd%2Bzlj%2BWJAUQrqf4gcWRDAJBO42gyF31An99PQ7AtxPGtBYtMjbizwKDKGduxzDKd14fiAptVsJ2mxL%2FdqGQEfuz8GE5FW6VoS3%2B0kSqhYjpvH3S1tKMU%2BBU472rqDGydsU0O6pS7AYxXqYHeubxdnvy0ZXnxo3XNBAg6GEMbQEIZKNSQiEtchaErDHJp341ptYrcX3%2Bqs8pKTIExnJ3xu4irX99Nkd5fikXYiYTMLQV9Gujw%2B5Spke2%2Fdct7YbncKNr2Qij7MoYg9RGJFufiB7KawAVmTa7C2lSFFZnGw3caksK9IQWVx9h%2BmOabviomfCZcXZVB%2BxdEM0O8IjszJp9fhs07VXHZ4VKB4ByuN%2FyjH9teCBJX0EyF2iBiyqUfI7gAVBsbAtDJ5flFg--HCWqSSYrmMi0DiTb--59S2j%2FomwHjlpUu5DEdPWw%3D%3D; jwt_fingerprint=674da37f02c15ba115bc7d9fabd2d06a; sid_develop=%7B%22mechanism%22%3A%22defuse_compact%22%2C%22ciphertext%22%3A%223vUCAPG5uEdZqG8nr6eLEivGv1Z9YkQvCw0XnwjGdqWK_nYBmjCXgSLPwcykrfPuDKxH9ex0cQY2geHeB4XmOSfId4x6FjcJuW-be6aZQ0x9Tpdeu-eWSzXb73QWKdwiJmQcJQ1mC-qnRYpouYYo4YPyVvP5pfKxywNd0S_-10dcfgd2odvx4eisuGruoJZBI4EFnbZ3XijdJaHzAqlqfQ5_Pwl26lX3FZbqdmu7aQ5NZ4JHtV8Wf21OKu1Eoq8MEkWbiXN22tje_pvSU_nDQ9Bs3JLMXU5aCOhrOm6jY9GyD9nywF2A-oaB6fvjKywTOWXFDBJ2msnENFhZVfyNUbGXyPBKkosfjZWlrFzkOdYKy1-br4ixwsQROon91AOoYLTkBV2tF3euCJQFIqYz7cbepElG37goB3fTv-z9Txe25EwLRg4naXscmA-cg214ur5z0yK-5gIhroLY2cWvXAZLeDiy8tNlWK-LpAdDWLIQNBh1OfYQdSVP82GWRKkwfgT9H36U0Vu1Y6m7RDI16wJ_y3qMI0TFjBEgtxNOxiMmqYznRt3qsB6DI1t3iDlYL7EJBxTMDJFicYZqxZsGGs8FKVpogXoCB8vA3bD7GoqV6ZXX-wgvl3KiR8bRqYf-lhsbHr3vPAUKFd1Jc6WOGDixMR00FmjW5a_GOfJTqqncNc2vmnRAEcOZQCtdHqNWo4GRJ1aYZU-ilv7ep6RZ0yeDyrJ8s4G3RfVMBZuXqYvZRbUz_FxemwI2VNzgxPxZVctVpHu4EyL6JaT4QwGMZ5Bd548LqnbGISQvPLVFx8voUNfmQgBl5ApbwzoCHN8z_J8AUAxDz4_2zKkOdHi5_0oBevHu_VugvqAa0nQYjnhn32va4RUSbrFRt_pixgyRacQsY-dNPRFjIZuOoPTwbiFRPL9zAisQsNojjhlllkzWvNGNQs4XNzGyNwhBXw%22%7D"
}:
let
  inherit (pkgs) lib fetchurl libarchive stdenv p7zip aria2;
in


stdenv.mkDerivation rec {
  
  nativeBuildInputs = [pkgs.jq pkgs.curl pkgs.cacert pkgs.gnused aria2];
  SSL_CERT_FILE="${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";

  pname = "NexusDownload";
  requiredInputs = [ "game_id" "mod_id" "file_id" "game_name" ];

  impureEnvVars = "cookie";
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = sha256;

  version = "1";
  buildInputs = [ (pkgs.writeText "envars.srcsh" ''
                                                export cookie='${cookie}'
                                                export game_id=${game_id}
                                                export mod_id=${mod_id}
                                                export file_id=${file_id}
                                                export game_name=${game_name}
                                                '') ];
  shellHook = ''
    source $(cat $PWD/envars.srcsh)
  '';
  preFixup = ''
    # Remove the cookie after it's no longer needed
    rm $out/envars.srcsh
    rm $out/env-vars
  '';
  builder = ./downloadFromNexus.sh;
  dontUnpack = true;
  meta = with lib; {
    description = "nexus downloader";
    license = licenses.mit;
  };

  passthru = {
    # Use builtins.readFile to read the contents of the file and pass it through
    fileContent = builtins.readFile ./url;
  };

}


