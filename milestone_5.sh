#!/bin/bash
# in this shell script one can find a code which 
# will find all the occurences of "de" within the dutch wikipedia page
# of the Rijksuniversiteit of Groningen.
# 
# Author: Tycho Klein Gunnewiek s4147669
# 
# Date: 11-03-2020
# 
# after downloading this script you should use the following command in your terminal to make the file executable:
# chmod +x milestone_5.sh
# after you have done that follow the next instruction.
# Usage: ./milestone_5.sh FILE (in our case we use a txt file created from the wikipedia
# page doing so like the following: 
# - go the the webpage you want to save
# - click right mouse button anywhere on the page to get a dropdown menu and choose the "save as" option.
# - now save the page as a .txt file to be able to use it in the shell.
# - make sure to save this file in the same location as the script
# 
# this shell script is used in the linux shell with version number: .

# this little code checks if the argument should is indeed a txt file.
TEXT=$1
if [ -z "$TEXT" ]
then 
    echo "specify a file!"
    exit
fi

# The next little bit of code will do the following:
# - outputs each match on its own line (done by the -o option)
# - make no distiction between the use of lower or upper case letters (done by the -i option)
# - specify the word to be searched by the grep command (in this case the word "de" )
# - specify which file to search in (in this case the saved wikipedia page as a .txt file)
# - pipe this into wc -w which counts the occurences of the word de in the specified file (using the "|" character).
grep -o -i de Rug_Wikipedia.txt | wc -w
