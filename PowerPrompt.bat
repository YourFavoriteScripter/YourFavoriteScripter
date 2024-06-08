:setup
@echo off
title PowerPrompt v0.02
echo PowerPrompt Pre-Alpha 2 All rights reserved.
echo Have any suggestions? Send them to PowerPrompt2000@gmail.com!
echo Say cmds for a list of commands.

:command
set /p cmd="C:\Users\User\"
if %cmd% EQU cmds goto commandlist
if %cmd% EQU program-cmds goto programcmds
if %cmd% EQU version goto ver
if %cmd% EQU createfolder goto foldermake
if %cmd% EQU log goto logprocedure
if %cmd% EQU textcolor goto textcolorprocedure
if %cmd% EQU clear goto clear
if %cmd% EQU website goto website
echo Command not found

goto command

:commandlist
echo ---PowerPrompt Pre-Alpha Commands-------------------------------------------------------
echo Command 1 - cmds - Shows you the available commands.
echo Command 2 - program-cmds - Specify a program for the Run and Close commands.
echo Command 3 - run - Opens the program you specified with the program-commands command.
echo Command 4 - createfolder - Gets you into the folder making procedure!
echo Command 5 - textcolor - Text color changing procedure.
echo Command 6 - log - Message saying procedure.
echo Command 7 - version - Shows you which version of PowerPrompt you are currently using.
echo Command 8 - close - Closes the program you specified with the program-commands command.
echo -PowerPrompt Pre-Alpha 2 Commands-------------------------------------------------------
echo Command 9 - clear - Removes history.
echo Command 10 - website - Launches your browser and opens the website. (procedure)
echo -PowerPrompt Pre-Alpha 3 Commands-------------------------------------------------------
echo Command 11 - ~~~~~~~~ - ~~~~~~~~
echo Command 12 - ~~~~~~~~ - ~~~~~~~~
echo Command 13 - ~~~~~~~~ - ~~~~~~~~
echo ----------------------------------------------------------------------------------------
goto command

:clear
cls & goto setup

:programcmds
echo Program-Commands procedure v0.08
set /p program="C:\Users\User\PowerPrompt\Program-Commands\ProgramName\"
set /p cmd="C:\Users\User\PowerPrompt\Program-Commands\run-close-cancel\"

if %cmd% EQU run goto programcmdsrun
if %cmd% EQU close goto programcmdsclose
if %cmd% EQU cancel goto command

echo Error 808 - Command not found.
goto programcmds

:programcmdsrun
echo Running program . . .
start %program%
echo SUCCESS: The process "%program%" has been opened!

goto command

:programcmdsclose
echo Closing program . . .
taskkill /F /IM %program%

goto command

:ver
echo Your PowerPrompt is in Pre-Alpha 2, specifically v0.02.

goto command

:foldermake
echo CreateFolder procedure v0.02
set /p folderName="Choose the folder's name: "
echo Creating folder . . .
md %folderName%
echo SUCCESS: The folder called "%folderName%" has been created in the directory "C:\Users\User\Desktop"!

goto command

:logprocedure
echo Log procedure v0.03
set /p message="What should the log say? - "
pause
echo %message%

goto command

:textcolorprocedure
echo TextColor X v0.13
set /p textcolor="Which color should the text be? Choose from: Blue, Green, Aqua, Red, Purple, Yellow, White, Gray, Light-Blue, Light-Green, Light-Aqua, Light-Red, Light-Purple, Light-Yellow, and Bright-White. - "
echo Nice choice! Redirecting you to ColorConvertor now.
goto colorconvertor

:colorconvertor
echo COLOR-CONVERTOR V0.13
pause

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 1]
if %textcolor% EQU Blue set textcolor=1
if %textcolor% EQU 1 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 2]
if %textcolor% EQU Green set textcolor=2
if %textcolor% EQU 2 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 3]
if %textcolor% EQU Aqua set textcolor=3
if %textcolor% EQU 3 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 4]
if %textcolor% EQU Red set textcolor=4
if %textcolor% EQU 4 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 5]
if %textcolor% EQU Purple set textcolor=5
if %textcolor% EQU 5 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 6]
if %textcolor% EQU Yellow set textcolor=6
if %textcolor% EQU 6 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 7]
if %textcolor% EQU White set textcolor=7
if %textcolor% EQU 7 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 8]
if %textcolor% EQU Gray set textcolor=8
if %textcolor% EQU 8 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 9]
if %textcolor% EQU Light-Blue set textcolor=9
if %textcolor% EQU 9 goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 10]
if %textcolor% EQU Light-Green set textcolor=A
if %textcolor% EQU A goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 11]
if %textcolor% EQU Light-Aqua set textcolor=B
if %textcolor% EQU B goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 12]
if %textcolor% EQU Light-Red set textcolor=C
if %textcolor% EQU C goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 13]
if %textcolor% EQU Light-Purple set textcolor=D
if %textcolor% EQU D goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 14]
if %textcolor% EQU Light-Yellow set textcolor=E
if %textcolor% EQU E goto changetextcolor

echo TRYING TO CONVERT YOUR COLOR... [ATTEMPT 15]
if %textcolor% EQU Bright-White set textcolor=F
if %textcolor% EQU F goto changetextcolor

echo THE COLOR YOU HAVE ENTERED IS NOT A VALID COLOR.
pause
echo PLEASE ENTER A VALID COLOR NEXT TIME!

goto command

:changetextcolor
echo Your color has been converted!
color %textcolor%
echo The text color has been changed.

goto command

:website
set /p domain="Enter the name of the website you would like to go to, (example.com) - "
echo Opening website!
start "msedge.exe" "https://www.%domain%"

goto command
