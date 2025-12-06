@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

REM --- Configuration Variables ---
SET "TargetFile=script.ini"
REM Search for the *exact line* content
SET "SearchLine=$TRAINGROUP_LOCOMOTIVE"
REM Replace the line with this *exact* content
SET "ReplaceLine=$TRAINGROUP_LOCOMOTIVE_STEAM"
SET "FolderList=2674360834 2573140862 2876219291 3586048211 3267422791 2875857701 3583890375 3033562291 3268770065 2986962155 2491660594 2989148124 2409199116 2989148199 2425298852 2989148023 2703756131 2417113009 2989148267 2583625846 2730593884 1915382717"
SET "TempFile=%TEMP%\temp_replace.tmp"
SET "ModifiedList="

ECHO.
ECHO --------------------------------------------------------------------------------
ECHO AUHRS ^| WRSR STEAM LOCOMOTIVE CONVERSION FOR EARLY START          2025-12-06
ECHO GitHub: https://github.com/auhrs/wrsr-steamlococonv               version 1.0
ECHO.
ECHO This script modifies certain steam locomotive assets available on the Steam
ECHO Workshop for Workers and Resources which uses diesel rather than coal as its
ECHO fuel type.
ECHO.
ECHO See https://github.com/auhrs/wrsr-steamlococonv for further information and a
ECHO list of assets this script modifies.
ECHO.
ECHO PLEASE NOTE: This script must be run from the workshop root folder - usually
ECHO C:\Program Files (x86)\Steam\steamapps\workshop\content\784150
ECHO.
ECHO WARNING: This script makes NO backups. Files are overwritten directly.
ECHO.
PAUSE

REM --- 1. Loop through all specified Mod IDs ---
FOR %%I IN (%FolderList%) DO (
    SET "CurrentID=%%I"
    
    IF EXIST "%%I" (
        ECHO Scanning ID: !CurrentID!...
        
        CALL :PROCESS_ID_FOLDER "%%I"
        
        IF NOT "!FilesFoundInID!"=="0" (
            SET "ModifiedList=!ModifiedList! %%I"
            ECHO   ^> Success for ID %%I
        )

    ) ELSE (
        ECHO Folder not found: %%I. Skipping.
    )
    ECHO.
)

ECHO.
ECHO --- Operation Complete ---
PAUSE

ENDLOCAL
GOTO :EOF

REM ######################################################################
REM ### SUBROUTINE TO PROCESS FILES INSIDE A SINGLE MOD ID FOLDER ###
REM ######################################################################

:PROCESS_ID_FOLDER
    SET "FilesFoundInID=0"
    SET "IDPath=%~1"
    
    FOR /R "%IDPath%" %%F IN (!TargetFile!) DO (
        
        ECHO   ^> Modifying: %%F
        
        SET "FilesFoundInID=1"
        SET "FilePath=%%F"

        REM --- Replace text using a temporary file (Batch-Only Find/Replace) ---
        (
            REM **CRITICAL FIX:** Use 'type' and 'findstr' to read ALL lines, including blank ones.
            FOR /F "delims=" %%L IN ('type "!FilePath!" ^& break ^> "!FilePath!"') DO (
                SET "Line=%%L"
                
                REM Handle empty lines separately to ensure clean output
                IF "!Line!"=="" (
                    ECHO.
                ) ELSE (
                    
                    REM LINE REPLACEMENT LOGIC: Compare line to SearchLine
                    IF "!Line!" EQU "%SearchLine%" (
                        REM If the line matches exactly, print the replacement line
                        ECHO %ReplaceLine%
                    ) ELSE (
                        REM If it doesn't match, print the original line
                        ECHO %%L
                    )
                )
            )
        ) > "!TempFile!"
        
        REM --- Overwrite the original file and clean up ---
        IF EXIST "!TempFile!" (
            MOVE /Y "!TempFile!" "!FilePath!" >NUL 2>&1
            IF NOT ERRORLEVEL 1 (
                ECHO     [SUCCESS] File Updated.
            ) ELSE (
                ECHO     [ERROR] Failed to overwrite original file. File locked?
            )
        ) ELSE (
            ECHO     [ERROR] Failed to create temporary output file. Skipping.
        )
    )
    
    EXIT /B 0