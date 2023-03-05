@echo off
echo Modul uruchamiajacy plik changelog.txt dla Super-Console 2.x
echo Modul ChangeLog/VerHistory 0.1.0.0
if exist changelog.txt goto exist
if not exist changelog.txt goto nexist

:exist
echo Znaleziono historiê wersji!!
echo ================================================================================
type changelog.txt
goto End

:nexist
echo Blad! Nie odnaleziono pliku changelog.txt!
echo Upewnij sie, ze sciezka badz nazwa pliku jest poprawna.
goto End

:End