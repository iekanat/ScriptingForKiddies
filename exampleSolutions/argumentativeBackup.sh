#!/bin/bash

# Declare Variables
target=$@
destination=~
fileName="BACKUP_$(date +%y%m%d).tgz"

# Declare Help Function
Help (){
    # DISPLAY HELP
    echo "Enter a list of folders separated by spaces."
    echo "The script will compress the folders and keep a log of this activity."
    echo "Use -h to display this help prompt"
}


# Get Options
while getopts ":h" option;
do
    case $option in
        h) 
            Help
            exit;;
        \?) # INVALID OPTIONS
            echo "Error: Invalid option"
            exit 2;;
    esac
done

# BACKUP THE CONTENTS OF DESKTOP FOLDER FOR CURRENT USER
tar czf $destination/$fileName $target
# Save into log
echo -e "Created $fileName \t $(date)" >> ~/BACKUP.log
