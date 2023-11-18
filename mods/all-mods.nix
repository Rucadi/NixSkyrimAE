{pkgs, ...}:
{
    USSEP = pkgs.callPackage ./bugfixes/USSEP {};
    defaultModBuilder = pkgs.callPackage ./nixutils/builder/defaultModBuilder.nix {};
}