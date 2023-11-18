{pkgs, modlist_name, lib, ...}:
rec {
    
    callPackage = lib.callPackageWith modlist_name;

    defaultModBuilder = callPackage ./nixutils/builder/defaultModBuilder.nix {};

    USSEP = callPackage ./bugfixes/USSEP {};
    
    SKYRIM202X_1 = callPackage ./ModelsAndTextures/SKYRIM202X_part1 { };
    SKYRIM202X_2 = callPackage ./ModelsAndTextures/SKYRIM202X_part2 { };
    SKYRIM202X_3 = callPackage ./ModelsAndTextures/SKYRIM202X_part3 { };
    
    SKYRIM202X = pkgs.buildEnv rec {
                        name = "SKYRIM202X";
                        paths = [
                            SKYRIM202X_3
                            SKYRIM202X_2
                            SKYRIM202X_1
                        ];
                ignoreCollisions= true;
            };
    
    SKSE = callPackage ./SKSE {};
    RaceMenu = callPackage ./UserInterface/RaceMenu {};
}