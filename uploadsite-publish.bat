:: this script builds a jekyll site and then uploads the site to github!
@echo off

:: let's set a variable to a source_destination full path
set source_destination=C:\Users\tyler\D\tdallison.github.io

:: Change the current directory to the location source_destination
cd /d "%source_destination%"

:: Initialize Git repository
git init

:: Add all files to the staging area
git add .

:: Commit changes with a comment
git commit -m "upload"

:: Check repository status
git status

:: finally, upload or Push the changes to the remote repository
git push

:: Set the name of your site-name
set SITE_NAME=freya-site

:: Display a message
echo contents of %source_destination% have been uploaded to github.

:: Pause to keep the Command Prompt window open
pause