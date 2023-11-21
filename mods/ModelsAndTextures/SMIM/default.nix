{
  pkgs,
  defaultModBuilder ? ../../nixutils/builder/defaultModBuilder.nix,
  mod_downloader ? ../../nixutils/downloaders/nexusmods,
  nexus_mods_cookie ? "",
  modlist_name,
  ...
}:
(pkgs.callPackage defaultModBuilder {
  inherit mod_downloader modlist_name nexus_mods_cookie;
  mod_author="";
  mod_name="SMIM";
  mod_description="SMIM";
  mod_version="something";
  mod_id="659";
  file_id="59069";
  sha256 = "sha256-pbd8dX6IuVZoE3KKduylIbiNG1eejIZhn1PV3DrYkIs="; 
  bith = "c13519d93bb8f209d8724959fb0804383e88c410";
}).overrideAttrs (oldAttrs: {
  patchPhase = '':'';
  installPhase = ''
  outdir=$out/${modlist_name}
  mkdir -p $outdir/Data/meshes
  mkdir -p $outdir/Data/textures
  # Copy folders
  cp -r "00 Core/meshes"/* $outdir/Data/meshes/
  cp -r "00 Core/textures"/*  $outdir/Data/textures/
  cp -r "01 Furniture/meshes"/* $outdir/Data/meshes/
  cp -r "01 Furniture/textures"/*  $outdir/Data/textures/
  cp -r "02 SMIM Barrel Textures Animations/meshes"/* $outdir/Data/meshes/
  cp -r "03 Food/meshes"/* $outdir/Data/meshes/
  cp -r "03 Food/textures"/*  $outdir/Data/textures/
  cp -r "04 Farmhouse 3D Ropes No Fade (Best)/meshes"/* $outdir/Data/meshes/
  cp -r "05 Chains 3D - Misc/meshes"/* $outdir/Data/meshes/
  cp -r "05 Chains 3D - Misc/textures"/*  $outdir/Data/textures/
  cp -r "06 Chains 3D - Signs/meshes"/* $outdir/Data/meshes/
  cp -r "06 Chains 3D - Signs/textures"/*  $outdir/Data/textures/
  cp -r "07 Chains 3D - Whiterun/meshes"/* $outdir/Data/meshes/
  cp -r "08 Chains 3D - Pull Levers Small Rings/meshes"/* $outdir/Data/meshes/
  cp -r "09 Dwemer Clutter/meshes"/* $outdir/Data/meshes/
  cp -r "09 Dwemer Clutter/textures"/*  $outdir/Data/textures/
  cp -r "10 Nordic Tables and Benches/meshes"/* $outdir/Data/meshes/
  cp -r "10 Nordic Tables and Benches/textures"/*  $outdir/Data/textures/
  cp -r "11 Bridges Real Roads/meshes"/* $outdir/Data/meshes/
  cp -r "11 Bridges Real Roads/textures"/*  $outdir/Data/textures/
  cp -r "12 Whiterun Doors/meshes"/* $outdir/Data/meshes/
  cp -r "13 Lanterns/meshes"/* $outdir/Data/meshes/
  cp -r "13 Lanterns/textures"/*  $outdir/Data/textures/
  cp -r "14 Stockade 3D Ropes/meshes"/* $outdir/Data/meshes/
  cp -r "14 Stockade 3D Ropes/textures"/*  $outdir/Data/textures/
  cp -r "15 Clothing Fixes/meshes"/* $outdir/Data/meshes/
  cp -r "15 Clothing Fixes/textures"/*  $outdir/Data/textures/
  cp -r "16 Tankard Pewter Metal/meshes"/* $outdir/Data/meshes/
  cp -r "16 Tankard Pewter Metal/textures"/*  $outdir/Data/textures/
  cp -r "17 Nordic Catacombs Skeletal Remains/meshes"/* $outdir/Data/meshes/
  cp -r "17 Nordic Catacombs Skeletal Remains/textures"/*  $outdir/Data/textures/
  cp -r "18 Farmhouse Woven Fence Less Flicker/meshes"/* $outdir/Data/meshes/
  cp -r "19 Smelter/meshes"/* $outdir/Data/meshes/
  cp -r "19 Smelter/textures"/*  $outdir/Data/textures/
  cp -r "21 Dwemer Animated Lifts SE/meshes"/* $outdir/Data/meshes/
  cp -r "22 Solitude Docks Ropes SE/meshes"/* $outdir/Data/meshes/
  cp -r "22 Solitude Docks Ropes SE/textures"/*  $outdir/Data/textures/
  cp -r "25 Solitude Gate Doors/meshes"/* $outdir/Data/meshes/
  cp -r "25 Solitude Gate Doors/textures"/*  $outdir/Data/textures/
  cp -r "26 Human Skull Fixes/meshes"/* $outdir/Data/meshes/
  cp -r "26 Human Skull Fixes/textures"/*  $outdir/Data/textures/
  cp -r "27 Hawk/meshes"/* $outdir/Data/meshes/
  cp -r "27 Hawk/textures"/*  $outdir/Data/textures/
  cp -r "29 Raven Rock 3D Ropes/meshes"/* $outdir/Data/meshes/
  cp -r "29 Raven Rock 3D Ropes/textures"/*  $outdir/Data/textures/
  cp -r "30 Rocks - Generic/meshes"/* $outdir/Data/meshes/
  cp -r "31 Rocks - Blackreach/meshes"/* $outdir/Data/meshes/
  cp -r "32 Rocks - Mountains/meshes"/* $outdir/Data/meshes/
  cp -r "33 Orc Longhouse/meshes"/* $outdir/Data/meshes/
  cp -r "33 Orc Longhouse/textures"/*  $outdir/Data/textures/
  cp -r "35 Shack Kit/meshes"/* $outdir/Data/meshes/
  cp -r "35 Shack Kit/textures"/*  $outdir/Data/textures/
  cp -r "37 Riften 3D Ropes/meshes"/* $outdir/Data/meshes/
  cp -r "37 Riften 3D Ropes/textures"/*  $outdir/Data/textures/
  cp -r "39 Dungeons 3D Ropes and Glorious Scaffolding/meshes"/* $outdir/Data/meshes/
  cp -r "39 Dungeons 3D Ropes and Glorious Scaffolding/textures"/*  $outdir/Data/textures/
  cp -r "40 Furniture Chests/meshes"/* $outdir/Data/meshes/
  cp -r "40 Furniture Chests/textures"/*  $outdir/Data/textures/
  cp -r "41 Draugr Corpses/meshes"/* $outdir/Data/meshes/
  cp -r "42 Furniture Noble/meshes"/* $outdir/Data/meshes/
  cp -r "42 Furniture Noble/textures"/*  $outdir/Data/textures/
  cp -r "43 Whiterun Castle Wood Carvings Celtic/meshes"/* $outdir/Data/meshes/
  cp -r "43 Whiterun Castle Wood Carvings Celtic/textures"/*  $outdir/Data/textures/
  cp -r "44 Poor Coffin Custom Texture/meshes"/* $outdir/Data/meshes/
  cp -r "44 Poor Coffin Custom Texture/textures"/*  $outdir/Data/textures/
  cp -r "45 Hanging Rings/meshes"/* $outdir/Data/meshes/
  cp -r "45 Hanging Rings/textures"/*  $outdir/Data/textures/
  cp -r "46 Carriage Seats and Fixes/meshes"/* $outdir/Data/meshes/
  cp -r "46 Carriage Seats and Fixes/textures"/*  $outdir/Data/textures/
  cp -r "47 Juniper Tree/meshes"/* $outdir/Data/meshes/
  cp -r "47 Juniper Tree/textures"/*  $outdir/Data/textures/
  cp -r "49 Tundra Tree/meshes"/* $outdir/Data/meshes/
  cp -r "49 Tundra Tree/textures"/*  $outdir/Data/textures/
  cp -r "50 Dawnguard Soulcairn Bone Piles/meshes"/* $outdir/Data/meshes/
  cp -r "50 Dawnguard Soulcairn Bone Piles/textures"/*  $outdir/Data/textures/
  cp -r "53 Imperial Jail/meshes"/* $outdir/Data/meshes/
  cp -r "53 Imperial Jail/textures"/*  $outdir/Data/textures/
  cp -r "55 Windmills Base Vanilla Version Sails/meshes"/* $outdir/Data/meshes/
  cp -r "55 Windmills Base Vanilla Version Sails/textures"/*  $outdir/Data/textures/
  cp -r "56 Windmills SkyMills Compatibility Sails/meshes"/* $outdir/Data/meshes/
  cp -r "57 Ruins Sarcophagus/meshes"/* $outdir/Data/meshes/
  cp -r "57 Ruins Sarcophagus/textures"/*  $outdir/Data/textures/
  cp -r "58 Jewelry Rings/meshes"/* $outdir/Data/meshes/
  cp -r "58 Jewelry Rings/textures"/*  $outdir/Data/textures/
  cp -r "59 Jewelry Rings CCO Remade or Jewelcraft Patch/meshes"/* $outdir/Data/meshes/
  cp -r "60 Hearthfires Stuff/meshes"/* $outdir/Data/meshes/
  cp -r "60 Hearthfires Stuff/textures"/*  $outdir/Data/textures/
  cp -r "61 Bowl Ingredients/meshes"/* $outdir/Data/meshes/
  cp -r "61 Bowl Ingredients/textures"/*  $outdir/Data/textures/
  cp -r "70 Rabbit/meshes"/* $outdir/Data/meshes/
  cp -r "70 Rabbit/textures"/*  $outdir/Data/textures/
  cp -r "71 Candelabras Sconces Walltorches/meshes"/* $outdir/Data/meshes/
  cp -r "71 Candelabras Sconces Walltorches/textures"/*  $outdir/Data/textures/
  cp -r "72 Chandeliers/meshes"/* $outdir/Data/meshes/
  cp -r "72 Chandeliers/textures"/*  $outdir/Data/textures/
  cp -r "75 Dungeons Cliffs Snow Skirts/meshes"/* $outdir/Data/meshes/
  cp -r "75 Dungeons Cliffs Snow Skirts/textures"/*  $outdir/Data/textures/
  cp 95\ Merged\ ESP\ SE\ All/SMIM-SE-Merged-All.esp  $outdir/Data
  '';
})