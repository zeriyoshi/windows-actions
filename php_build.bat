cd "D:\php-src"
dir
cmd /c phpsdk_deps --update --no-backup --branch %BRANCH% --stability staging --crt %CRT%
if %errorlevel% neq 0 exit /b 3
cmd /c buildconf.bat --force
if %errorlevel% neq 0 exit /b 3
