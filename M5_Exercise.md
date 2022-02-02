---
title: "Linux Command Line"
subtitle: "Exercise"
author: "Irfan Kanat"
date: "<FIX THE DATE>"
output: pdf_document
titlepage: true
titlepage-rule-color: "360049"
titlepage-background: "backgrounds/background1.pdf"
urlcolor: blue
---

Below are a series of exercises for you to test the skills you learned in this module.

## Simple Backup Script

The simplest script we can write is a list of commands to be executed in order.

Here are the requirements for this script:

* The script shall compress the contents of Desktop folder in user's home directory.
* The compression should be done using TAR using gzip.
* The backup file should be stored in users home directory.
* The backup file should be named BACKUP.tgz
* The script should record the current date in a log file once backup is finished.
* The log file should be stored in users home directory.
* The log file should be named BACKUP.log

You can do this in one or two lines. It is really a simple script.

## Use Variables

Now let us make it a bit more flexible by using variables.

* The target directories to be backed up shall be declared in a variable named target.
* Each directory in target variable shall be separated by spaces.
* The destination directory for the backups to be stored should be declared as a variable named destination.
* The script shall compress the contents of target folders.
* The compression should be done using TAR using gzip.
* The backup file should be stored in destination directory.
* The backup file should be named BACKUP_YYMMDD.tgz (YYMMDD standing for Year Month day of the backup)
* The script should record the current date and name of the backup file in a log file once backup is finished.
* The log file should be stored in destination directory.
* The log file should be named BACKUP.log

Write the script so the target variable is the user's desktop folder and destination variable is the user's home folder.

## Use Arguments

Now we want the script to work with arguments from the command line.

* The target directories to be backed up shall be declared in a variable named target.
* The target variable should be populated with the arguments passed to the script from the command line.
* Each directory in target variable shall be separated by spaces.
* The destination directory for the backups to be stored should be declared as a variable named destination.
* The script shall compress the contents of target folders.
* The compression should be done using TAR using gzip.
* The backup file should be stored in destination directory.
* The backup file should be named BACKUP_YYMMDD.tgz (YYMMDD standing for Year Month day of the backup)
* The script should record the current date and name of the backup file in a log file once backup is finished.
* The log file should be stored in destination directory.
* The log file should be named BACKUP.log

Write the script so that the destination variable is the user's home folder. Call the script with User's desktop folder as an argument.

## Get Help

The stress of managing our growing stress is getting to us and we need professional help.

* The script should provide a help option.
* The help functionality should be implemented as a function.
* When the script is called with -h option, it should display an explanation of what the script does including the expected arguments and options.
* If the script is called with an invlaid option, it display the message: "ERROR: Invalid option".
* If the script is called with an invlaid option, it should terminate with error code 2.
* The target directories to be backed up shall be declared in a variable named target.
* The target variable should be populated with the arguments passed to the script from the command line.
* Each directory in target variable shall be separated by spaces.
* The destination directory for the backups to be stored should be declared as a variable named destination.
* The script shall compress the contents of target folders.
* The compression should be done using TAR using gzip.
* The backup file should be stored in destination directory.
* The backup file should be named BACKUP_YYMMDD.tgz (YYMMDD standing for Year Month day of the backup)
* The script should record the current date and name of the backup file in a log file once backup is finished.
* The log file should be stored in destination directory.
* The log file should be named BACKUP.log

## Schedule It!

Schedule the script to run every fifteen minutes.

## Name That Thing

You know you can backup the files with long passwords... You can also delete the files you already have backed up... You may even do this to files of other people... 

This makes me think of something... It is at the tip of my tongue... What would you call an involuntary backup service?

![CC4](CC4.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).