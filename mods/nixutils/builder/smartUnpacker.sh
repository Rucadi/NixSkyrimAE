rename_if_exists() {
    root_folder="$1"
    folder_name="$2"
    # Use ls -d to list only directories
    for folder in $(find $root_folder -maxdepth 1 -type d); do
        # Extract the folder name without the path
        current_folder_name=$(basename "$folder")

        # Check if the folder name matches, case-insensitive
        if [ "${current_folder_name,,}" = "${folder_name,,}" ]; then
            # Rename the folder
            mv "$folder" "$root_folder/$folder_name"
            echo "Folder '$current_folder_name' renamed to '$folder_name'."
            return 0
        fi
    done
}



7z x -aoa $src 

rename_if_exists data Data