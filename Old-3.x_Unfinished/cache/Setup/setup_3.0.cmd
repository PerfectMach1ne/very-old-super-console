@echo off
title Configurating Super-Console...
echo Super-Console 3.0 environment installation setup file. (PL)

echo Ten plik utworzy skrot w katalogu 'C:\WINDOWS' skrot ccp do programu Super-Console
copy ccp.cmd %windir%
echo Operacja zakonczona pomyslnie (0).

echo Ten plik utworzy teraz zmienna srodowiskowa systemu Windows, aby skrot mogl dziaac poprawnie
rundll32 syssetup, SetupInfObjectInstallAction DefaultInstall 128 inscpp.inf
echo Operacja zakonczona pomyslnie (0).

exit