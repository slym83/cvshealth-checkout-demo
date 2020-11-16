:loop
cls
goto loop
:Loop
cls
color 0f
set /P the="%cd%>"
%the%
echo.
goto loop
