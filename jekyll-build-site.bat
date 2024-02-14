:: this script builds a jekyll site!
@echo off

:: Change the current directory to the script's location. (where the .bat file is)
cd /D "%~dp0"

:: actuall build the site.
jekyll build

:: Introduce a delay (optional)
ping -n 3 127.0.0.1 > nul

:: Exit the script with a successful status.
exit /b