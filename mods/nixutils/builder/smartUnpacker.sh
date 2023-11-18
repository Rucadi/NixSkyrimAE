rename_if_exists() {
    root_folder="$1"
    folder_name="$2"

    cd $root_folder
    # Use ls -d to list only directories
    for folder in $(find . -maxdepth 1 -type d); do
        # Extract the folder name without the path
        current_folder_name=$(basename "$folder")

        # Check if the folder name matches, case-insensitive
        if [ "${current_folder_name,,}" = "${folder_name,,}" ]; then
            # Rename the folder
            mv "$folder" "$folder_name"
            echo "Folder '$current_folder_name' renamed to '$folder_name'."
            cd -
            return 0
        fi
    done

    cd -
}



7z x -aoa $src 

RootFolder= $out/skyrim-se-modded/
DataFolder= $RootFolder/Data/
mkdir -p "$DataFolder"

rename_if_exists . Data

cd Data || true
rename_if_exists . SKSE
rename_if_exists . Docs
rename_if_exists . Interface
rename_if_exists . textures
rename_if_exists . meshes
rename_if_exists . Scripts

