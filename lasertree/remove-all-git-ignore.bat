@echo off
set "rootDirectory=C:\Users\tyler\D\tdallison.github.io\lasertree"

:: Recursively find all .gitignore files and remove them
for /r "%rootDirectory%" %%F in (*.gitignore) do (
    del "%%F"
)

echo All .gitignore files removed successfully.
