---
title: "Scripting for Kiddies"
subtitle: "Mastering Timed Tasks"
author: "Irfan Kanat"
date: "<FIX THE DATE>"
output: pdf_document
titlepage: true
titlepage-rule-color: "360049"
titlepage-background: "backgrounds/background1.pdf"
urlcolor: blue
---

# Mastering Timed Tasks with Cron

You wrote your scripts and automated your tasks. Wouldn't it be just grand if you could lean back and let the computer execute your scripts when you need it? You know... without you ever having to call the script.

That would probably be a timed task. Like backing up the contents of your documents folder every day at midnight, or deleting your browsing history after 2 am, checking the contents of a file every hour and download the files specified in it... The possibilities are endless.

How you accomplish this is through *cron*. Cron is a daemon (a process that runs in the background) that checks the contents of a crontab file (or folders) for commands to execute.

## Easy Way

In Haaukins we have a few folders under /etc/ that cron deamon checks regularly and executes commands in.

If you have a script that needs to be executed hourly just put it in the /etc/cron.hourly folder.

| **Execution** | **Folder** |
|:----|:----|
| Hourly | /etc/cron.hourly |
| Daily | /etc/cron.daily |
| Weekly | /etc/cron.weekly |
| Monthly | /etc/cron.monthly |

## The more flexible way.

Or you can put your scripts/commands into the crontab file. The format of the crontab file is as follows:

	┌───────────── minute (0 - 59)
	│ ┌───────────── hour (0 - 23)
	│ │ ┌───────────── day of the month (1 - 31)
	│ │ │ ┌───────────── month (1 - 12)
	│ │ │ │ ┌───────────── day of the week (0 - 6)
	│ │ │ │ │
	│ │ │ │ │
	* * * * * <command to execute>

So if you want to execute a command hourly at the top of the hour it would look like this:

	0 * * * * /home/haaukins/deadmansswitch.sh

If you want to execute a command on saturdays at midnight it would look like this:

	0 0 * * 6 /home/haaukins/deleteMyBrowsingHistory.sh

There are many online crontab generators out there. Google crontab generator and see how it works. This is very flexible as you can specify things like run the summoning.sh script only when mercury is in retrograde and there is a full moon (well maybe not that flexible...).

## You Don't Touch Crontab

In the old days one would edit the crontab manually. Much like why people no longer shave with straight razors, people no longer edit crontab by hand. Too many accidents, and too much blood spilled in both cases.

Instead you use crontab command to insert or edit entries to crontab.

    crontab -e

Edits the crontab file. When you run it for the first time the system will ask you to pick a command line text editor. Choose nano. No point being a vim or emacs elitist in a scripting for kiddies course.

We will use a modified version of our size script to monitor the passwd file size every minute. The script when executed adds a line to a file named size.log.

    #! /bin/bash
    
    size=$(du -sh $1 | awk '{print $1}')
    
    echo -e "$(date) \t $1 is $size." >> size.log

Save the script as size6.sh and make it executable.

Call crontab for editing.

    crontab -e

And add the following line to the bottom of the file

    * * * * * /home/haaukins/size6.sh /etc/passwd

The script is supposed to run every minute. So wait a couple minutes and check the size.log file in haaukins home folder.

[![Cron to schedule a script to run every minute](figures/cron.gif)](videos/cron.mp4 "Click to watch with audio")

![CC4](CC4.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).