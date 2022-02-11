#!/bin/bash

# Declare Variables
target=~/Desktop
destination=~
fileName="BACKUP_$(date +%y%m%d).tgz"

# BACKUP THE CONTENTS OF DESKTOP FOLDER FOR CURRENT USER
tar czf $destination/$fileName $target
# Save into log
echo -e "Created $fileName \t $(date)" >> ~/BACKUP.log
