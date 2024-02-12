:: this script builds a jekyll site!
@echo off

:: Change the current directory to the script's location. (where the .bat file is)
cd /D "%~dp0"

:: actuall build the site.
jekyll build

:: exit or close the script. b is with a successful status.
exit /b