{pkgs, nexus_mods_cookie, modlist_name}:
{
inherit nexus_mods_cookie modlist_name;
  import ./mods/all-mods.nix
}
