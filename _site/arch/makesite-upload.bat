:: this script builds a jekyll site and then uploads the site to github!
@echo off

:: let's set a variable to a source_destination full path
set source_destination=C:\Users\tyler\D\tdallison.github.io\arch

:: Change the current directory to the script's location. (where the .bat file is)
cd /D "%~dp0"

:: Set the name of your site-name
set SITE_NAME=arch-site

echo %SITE_NAME%

:: let's build the jekyll site in the current directory.
start jekyll-build-site.bat
:: jekyll build

:: add a 5-second pause.....
ping -n 6 127.0.0.1 > nul

:: now uploading
echo build complete, now copying and uploading %SITE_NAME%

:: Copy the contents of the _site folder recursively from _site to source_directory
robocopy "_site" "%source_destination%" /s /e

:: Display a message upon completion
echo contents of the _site folder have been copied %source_destination%

:: Pause to keep the Command Prompt window open
pause