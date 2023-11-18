{pkgs, nexus_mods_cookie, modlist_name}:
import ./mods/all-mods.nix {inherit nexus_mods_cookie modlist_name pkgs;}

