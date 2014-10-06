@echo off
echo Decompiler Script Utility
echo .........................
echo.
pause
if exist base goto DECOMP

:: COPY ROUTINE
:COP
echo Copying Files...
xcopy /s "C:\Program Files (x86)\Origin Games\The Sims 4\Data\Simulation\Gameplay\base.zip"
xcopy /s "C:\Program Files (x86)\Origin Games\The Sims 4\Data\Simulation\Gameplay\core.zip"
xcopy /s "C:\Program Files (x86)\Origin Games\The Sims 4\Data\Simulation\Gameplay\simulation.zip"
goto END

:: DECOMPILE ROUTINE
:DECOMP
echo Files Copied. Attempting Decompilation using the unpyc3.py utility.
for /r %%i in (*) do unpyc3.py "%%i" > %%i.py

:: KILL SWITCH
:END
echo Completed.
pause
exit