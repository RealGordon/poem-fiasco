#!/bin/bash
#__author : gordon.amamoo@amalitech.org
#1. Checkout the HEAD version of road-not-taken.txt to discard changes made to the working directory.
git checkout HEAD road-not-taken.txt

#2.Now, finish the poem by adding a line. Here’s a suggestion:"And that has made all the difference."
#Then click Save.
#3. use the shortcut version of the checkout HEAD command to discard changes to oven-bird.txt
git checkout -- oven-bird.txt

#4.Now, finish “Oven Bird” by adding a line. Here’s a suggestion:"Is what to make of a diminished thing."
#Then click Save.
#Click on fire-and-ice.txt.
#5. This file has not been altered, but just to be sure, check the diff for this file.
git diff fire-and-ice.txt

#6. Now that you’ve restored and completed road-not-taken.txt and oven-bird.txt and added a line to fire-and-ice.txt, add all three of the files to the staging area with a single command.
git add .

#7.fire-and-ice.txt could be better. Before you commit, remove this file from the staging area
git reset HEAD fire-and-ice.txt


#8. Now that you’ve removed fire-and-ice.txt, make a commit. commit-SHA: a85776f
git commit -m "first commit"

#9. make drastic changes to all 3 files and save
#10. Now add all three files to the staging area.
git add .


#11. Make a commit. commit-SHA: 7556165
git commit -m "second commit"

#12.Reset your Git project to the commit before you made those drastic changes
git reset a85776f

#13.What Git backtracking command that you already know can discard changes to the working directory, restoring the files to the way they look in the HEAD commit?
git checkout HEAD .
