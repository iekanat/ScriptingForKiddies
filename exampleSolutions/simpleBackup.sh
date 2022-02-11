#!/bin/bash

# BACKUP THE CONTENTS OF DESKTOP FOLDER FOR CURRENT USER
tar czf ~/BACKUP.tgz ~/Desktop
# Save into log
echo "$(date)" >> ~/BACKUP.log
