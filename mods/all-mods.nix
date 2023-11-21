{pkgs, modlist_name, nexus_mods_cookie, ...}:
rec {
    
    callPackage = pkgs.lib.callPackageWith {inherit modlist_name pkgs nexus_mods_cookie;};

    defaultModBuilder = callPackage ./nixutils/builder/defaultModBuilder.nix {};

    USSEP = callPackage ./BugFixes/USSEP {};
    SSEEngineFixes = callPackage ./BugFixes/SSEEngineFixes {};
    USMPSE = callPackage ./BugFixes/USMPSE {};
    PowerOfThreesTweaks = callPackage ./BugFixes/PowerOfThreesTweaks {};
    PapyrusExtender = callPackage ./BugFixes/PapyrusExtender {};

    SKYRIM202X_1 = callPackage ./ModelsAndTextures/SKYRIM202X_part1 { };
    SKYRIM202X_2 = callPackage ./ModelsAndTextures/SKYRIM202X_part2 { };
    SKYRIM202X_3 = callPackage ./ModelsAndTextures/SKYRIM202X_part3 { };
    SMIM = callPackage ./ModelsAndTextures/SMIM { };
    
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

    AdressLibrarySKSEPlugins = callPackage ./SKSE/AdressLibrarySKSEPlugins {};

    RaceMenu = callPackage ./UserInterface/RaceMenu {};
    SkyUI = callPackage ./UserInterface/SkyUI {};
    GhostItemFix = callPackage ./UserInterface/SkyUI/GhostItemFix {};

    MoreInformativeConsole = callPackage ./UserInterface/MoreInformativeConsole {};
    MoreHud = callPackage ./UserInterface/MoreHud {};
    MoreHudInventoryEdition = callPackage ./UserInterface/MoreHudInventoryEdition {};
    BetterDialogueControls = callPackage ./UserInterface/BetterDialogueControls {};
    BetterMessageBoxControls = callPackage ./UserInterface/BetterMessageBoxControls {};



    AlternateStart = callPackage ./Gameplay/AlternateStart {};
}