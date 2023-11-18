{pkgs, modlist_name, ...}:
rec {
    inherit modlist_name;
    defaultModBuilder = pkgs.callPackage ./nixutils/builder/defaultModBuilder.nix {};

    USSEP = pkgs.callPackage ./bugfixes/USSEP {};
    
    SKYRIM202X_1 = pkgs.callPackage ./ModelsAndTextures/SKYRIM202X_part1 { };
    SKYRIM202X_2 = pkgs.callPackage ./ModelsAndTextures/SKYRIM202X_part2 { };
    SKYRIM202X_3 = pkgs.callPackage ./ModelsAndTextures/SKYRIM202X_part3 { };
    
    SKYRIM202X = pkgs.buildEnv rec {
                        name = "SKYRIM202X";
                        paths = [
                            SKYRIM202X_3
                            SKYRIM202X_2
                            SKYRIM202X_1
                        ];
                ignoreCollisions= true;
            };
    
    SKSE = pkgs.callPackage ./SKSE {};
    RaceMenu = pkgs.callPackage ./UserInterface/RaceMenu {};
}