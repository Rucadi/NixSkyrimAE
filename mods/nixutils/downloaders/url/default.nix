{ 
  pkgs,
  file_id,
  sha256,
  ...
}:
pkgs.fetchurl {inherit sha256; url = file_id;}