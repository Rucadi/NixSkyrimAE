{system, lib, pkgs, nexus_mods_cookie, modlist_name}:
import ./mods/all-mods.nix {inherit system nexus_mods_cookie pkgs lib modlist_name;}

