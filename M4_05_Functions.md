---
title: "Linux Command Line"
subtitle: "Functions in Bash"
author: "Irfan Kanat"
date: "<FIX THE DATE>"
output: pdf_document
titlepage: true
titlepage-rule-color: "360049"
titlepage-background: "backgrounds/background1.pdf"
urlcolor: blue
---

# Functions

No programming language would be complete without functions. You can think of functions as little mini scripts. You can use functions as part of your scripts or declare them in your sh environment (bashrc, zshrc, etc.) to use regularly.

The syntax for declaring a function is:

    FunctionName () { code to be executed }

This can be familiar to you if you did any programming. Obviously you can pass parameters to the function.

The bellow function is a wrapper for find command. It will give you the location of the file of the same name.

    fetch () {
        find -iname $1
    }

Once the function is declared you can use it like so:

    fetch Desktop

And it will display location of files and folders that have the name desktop (case insensitive due to -iname parameter).

[![Declaring and Calling a Function](figures/function.gif)](videos/function.mp4 "Click to watch with audio")

Functions are very useful especially if you want to develop a sophisticated script.

![CC4](CC4.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).