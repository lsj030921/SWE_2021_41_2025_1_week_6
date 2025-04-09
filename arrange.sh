#!/bin/bash

directory_of_files="./files" # home has these directories in git ("."(home))

for txt_file in "$directory_of_files"/*.txt; do # getting each txt file by using Glob Pattern
    
    name_of_file=$(basename "$txt_file") #getting only file name without directory by using basename

    first_name="${name_of_file:0:1}" # getting first charactor

    lower_name=$(echo "$first_name" | tr '[:upper:]' '[:lower:]') # change upper -> lower by using tr
    #same function bellow

    #if ["$first_name" = "A"]; then
    #    lower_name="a"
    #elif ["$first_name" = "B"]; then
    #    lower_name="b"
    #elif ["$first_name" = "C"]; then
    #    lower_name="c"
    #elif ["$first_name" = "D"]; then
    #    lower_name="d"
    #elif ["$first_name" = "E"]; then
    #    lower_name="e"
    #elif ["$first_name" = "F"]; then
    #    lower_name="f"
    #elif ["$first_name" = "G"]; then
    #    lower_name="g"
    #elif ["$first_name" = "H"]; then
    #    lower_name="h"
    #elif ["$first_name" = "I"]; then
    #    lower_name="i"
    #elif ["$first_name" = "J"]; then
    #    lower_name="j"
    #elif ["$first_name" = "K"]; then
    #    lower_name="k"
    #elif ["$first_name" = "L"]; then
    #    lower_name="l"
    #elif ["$first_name" = "M"]; then
    #    lower_name="m"
    #elif ["$first_name" = "N"]; then
    #    lower_name="n"
    #elif ["$first_name" = "O"]; then
    #    lower_name="o"
    #elif ["$first_name" = "P"]; then
    #    lower_name="p"
    #elif ["$first_name" = "Q"]; then
    #    lower_name="q"
    #elif ["$first_name" = "R"]; then
    #    lower_name="r"
    #elif ["$first_name" = "S"]; then
    #    lower_name="s"
    #elif ["$first_name" = "T"]; then
    #    lower_name="t"
    #elif ["$first_name" = "U"]; then
    #    lower_name="u"
    #elif ["$first_name" = "V"]; then
    #    lower_name="v"
    #elif ["$first_name" = "W"]; then
    #    lower_name="w"
    #elif ["$first_name" = "X"]; then
    #    lower_name="x"
    #elif ["$first_name" = "Y"]; then
    #    lower_name="y"
    #elif ["$first_name" = "Z"]; then
    #    lower_name="z"
    #else
    #    lower_name="$first_name"
    #fi

    mv "$txt_file" "./$lower_name" # move txt file to 'lower case' directory in home
done