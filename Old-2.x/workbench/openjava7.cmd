@echo off
echo Modul uruchamiajacy pliki Java dla Super-Console 2.x
echo Modul OpenJava 0.1
echo Wersja dla Java 7
echo.
ping localhost -n 2 >nul

:SetCD
echo Wpisz nazwe katalogu pliku:
echo !UWAGA! Musi to byc adres MS-DOS i nie moze byc zakonczony na \ !
set /p ojcd=
goto SetFile

:SetFile
echo Teraz wpisz nazwe pliku Java i zatwierdz:
echo !UWAGA! Musi to byc plik z rozszerzeniem .jar!
set /p jarfile=
goto OpenFile

:OpenFile
SET BINDIR=%~dp0
CD /D "%BINDIR%"
if NOT EXIST %ojcd%\%jarfile% goto TryToFix
"%ProgramFiles%\Java\jre7\bin\java.exe" -Xmx1G -Xms1G -jar %jarfile%
goto End

:TryToFix
SET BINDIR=%~dp0
CD /D "%BINDIR%"
if NOT EXIST %ojcd%\%jarfile% echo Nie odnaleziono pliku lub adres jest nieprawidlowy!
if NOT EXIST %ojcd%\%jarfile% goto End
"%ProgramFiles%\Java\jre7\bin\java.exe" -Xmx1G -Xms1G -jar %jarfile%
goto End

:End
cd %cd%
exit /B