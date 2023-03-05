@echo off
echo Modul uruchamiajacy plik readme.txt dla Super-Console
echo Modul Readme 0.1.3
if exist readme.txt goto exist
if not exist readme.txt goto nexist

:exist
echo Znaleziono plik Readme!
echo ================================================================================
type readme.txt
goto End

:nexist
echo Blad! Nie odnaleziono pliku readme.txt!
echo Upewnij sie, ze sciezka badz nazwa pliku jest poprawna.
goto End

:End