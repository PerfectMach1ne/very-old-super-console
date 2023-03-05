@echo off
title CCP Launcher version 1.2.0.0
echo CCP Launcher - version 1.2.0.0
echo Super-Console 2.1
echo.
title Super-Console - Preparing standard setup...
echo Preparing console setup...
cd %cd%
color
title Super-Console - Enabling file verify...
verify ON
verify
title Super-Console - Checking files...
echo Checking files...
goto 00

:00
title Super-Console - Checking help data...
set errcode=howto.cmd
set nextcode=01
if EXIST howto.cmd goto %nextcode%
if NOT EXIST howto.cmd goto COREERR
:01
title Super-Console - Checking Readme module...
set errcode=readme.exe
set nextcode=02
if EXIST readme.exe goto %nextcode%
if NOT EXIST readme.exe goto MAINMODULEERR
:02
set errcode=readme.txt
set nextcode=03
if EXIST readme.txt goto %nextcode%
if NOT EXIST readme.txt goto INFOERR
:03
title Super-Console - Checking modules...
set errcode=base64.exe
set nextcode=04
if EXIST base64.exe goto %nextcode%
if NOT EXIST base64.exe goto MODULEERR
:04
set errcode=cliptext.exe
set nextcode=05
if EXIST cliptext.exe goto %nextcode%
if NOT EXIST cliptext.exe goto MODULEERR
:05
set errcode=closewindow.exe
set nextcode=06
if EXIST closewindow.exe goto %nextcode%
if NOT EXIST closewindow.exe goto MODULEERR
:06
set errcode=crc32.exe
set nextcode=07
if EXIST crc32.exe goto %nextcode%
if NOT EXIST crc32.exe goto MODULEERR
:07
set errcode=cscpvbs.exe
set nextcode=08
if EXIST cscpvbs.exe goto %nextcode%
if NOT EXIST cscpvbs.exe goto MODULEERR
:08
set errcode=CSweg.exe
set nextcode=09
if EXIST CSweg.exe goto %nextcode%
if NOT EXIST CSweg.exe goto MODULEERR
:09
set errcode=Swreg.exe
set nextcode=10
if EXIST Swreg.exe goto %nextcode%
if NOT EXIST Swreg.exe goto MODULEERR
:10
set errcode=download.exe
set nextcode=11
if EXIST download.exe goto %nextcode%
if NOT EXIST download.exe goto MODULEERR
:11
set errcode=far.exe
set nextcode=12
if EXIST far.exe goto %nextcode%
if NOT EXIST far.exe goto MODULEERR
:12
set errcode=fcmp.exe
set nextcode=13
if EXIST fcmp.exe goto %nextcode%
if NOT EXIST fcmp.exe goto MODULEERR
:13
set errcode=GoRC.exe
set nextcode=14
if EXIST GoRC.exe goto %nextcode%
if NOT EXIST GoRC.exe goto MODULEERR
:14
set errcode=hidewindow.exe
set nextcode=15
if EXIST hidewindow.exe goto %nextcode%
if NOT EXIST hidewindow.exe goto MODULEERR
:15
title Super-Console - Checking mainframe modules...
set errcode=isadmin.exe
set nextcode=16
if EXIST isadmin.exe goto %nextcode%
if NOT EXIST isadmin.exe goto MAINMODULEERR
:16
title Super-Console - Checking modules...
set errcode=LS.exe
set nextcode=17
if EXIST LS.exe goto %nextcode%
if NOT EXIST LS.exe goto MODULEERR
:17
set errcode=maximizewindow.exe
set nextcode=18
if EXIST maximizewindow.exe goto %nextcode%
if NOT EXIST maximizewindow.exe goto MODULEERR
:18
set errcode=MD5File.exe
set nextcode=19
if EXIST MD5File.exe goto %nextcode%
if NOT EXIST MD5File.exe goto MODULEERR
:19
set errcode=moveex.exe
set nextcode=20
if EXIST moveex.exe goto %nextcode%
if NOT EXIST moveex.exe goto MODULEERR
:20
set errcode=procs.exe
set nextcode=21
if EXIST procs.exe goto %nextcode%
if NOT EXIST procs.exe goto MODULEERR
:21
set errcode=psservice.exe
set nextcode=22
if EXIST psservice.exe goto %nextcode%
if NOT EXIST psservice.exe goto MODULEERR
:22
set errcode=resizewindow.exe
set nextcode=23
if EXIST resizewindow.exe goto %nextcode%
if NOT EXIST resizewindow.exe goto MODULEERR
:23
set errcode=RIrsl.exe
set nextcode=24
if EXIST RIrsl.exe goto %nextcode%
if NOT EXIST RIrsl.exe goto MODULEERR
:24
set errcode=setwindowtitle.exe
set nextcode=25
if EXIST setwindowtitle.exe goto %nextcode%
if NOT EXIST setwindowtitle.exe goto MODULEERR
:25
set errcode=SF.exe
set nextcode=26
if EXIST SF.exe goto %nextcode%
if NOT EXIST SF.exe goto MODULEERR
:26
set errcode=sha1.exe
set nextcode=27
if EXIST sha1.exe goto %nextcode%
if NOT EXIST sha1.exe goto MODULEERR
:27
set errcode=sizeof.exe
set nextcode=28
if EXIST sizeof.exe goto %nextcode%
if NOT EXIST sizeof.exe goto MODULEERR
:28
set errcode=sleep.exe
set nextcode=29
if EXIST sleep.exe goto %nextcode%
if NOT EXIST sleep.exe goto MODULEERR
:29
set errcode=swsc.exe
set nextcode=30
if EXIST swsc.exe goto %nextcode%
if NOT EXIST swsc.exe goto MODULEERR
:30
set errcode=unzip.exe
set nextcode=31
if EXIST unzip.exe goto %nextcode%
if NOT EXIST unzip.exe goto MODULEERR
:31
set errcode=vbstoexe.exe
set nextcode=32
if EXIST vbstoexe.exe goto %nextcode%
if NOT EXIST vbstoexe.exe goto MODULEERR
:32
set errcode=WINMSG.exe
set nextcode=33
if EXIST WINMSG.exe goto %nextcode%
if NOT EXIST WINMSG.exe goto MODULEERR
:33
set errcode=zip.exe
set nextcode=34
if EXIST zip.exe goto %nextcode%
if NOT EXIST zip.exe goto MODULEERR
:34
title Super-Console - Checking MS-DOS modules...
set errcode=locate.com
set nextcode=35
if EXIST locate.com goto %nextcode%
if NOT EXIST locate.com goto MODULEERR
:35
title Super-Console - Checking license files...
set errcode=license.txt
set nextcode=36
if EXIST license.txt goto %nextcode%
if NOT EXIST license.txt goto INFOERR
:36
title Super-Console - Checking OpenJava module...
set errcode=openjava6.exe
set nextcode=37
if EXIST openjava6.exe goto %nextcode%
if NOT EXIST openjava6.exe goto MODULEERR
:37
title Super-Console - Checking OpenJava module...
set errcode=openjava7.exe
set nextcode=38
if EXIST openjava7.exe goto %nextcode%
if NOT EXIST openjava7.exe MODULEERR
:38
title Super-Console - Checking configurator files...
set errcode=setting.cmd
set nextcode=39
if EXIST setting.cmd goto %nextcode%
if NOT EXIST setting.cmd goto COREERR
:39
title Super-Console - Checking Kalkulator+ module...
set errcode=calcplus.exe
set nextcode=40
if EXIST calcplus.exe goto %nextcode%
if NOT EXIST calcplus.exe goto MODULEERR
:40
title Super-Console - Checking changelog text file...
set errcode=changelog.txt
set nextcode=41
if EXIST changelog.txt goto %nextcode%
if NOT EXIST changelog.txt goto INFOERR
:41
title Super-Console - Checking configuration files...
set errcode=log.on/log.off
set nextcode=42
if EXIST cfgdata\log.* goto %nextcode%
if NOT EXIST cfgdata\log.* goto COREERR
:42
set errcode=pressmode.on/pressmode.off
set nextcode=43
if EXIST cfgdata\pressmode.* goto %nextcode%
if NOT EXIST cfgdata\pressmode.* goto COREERR
:43
set errcode=module.on/module.off
set nextcode=44
if EXIST cfgdata\module.* goto %nextcode%
if NOT EXIST cfgdata\module.* goto COREERR
:44
set errcode=infomsg.on/infomsg.off
set nextcode=45
if EXIST cfgdata\infomsg.* goto %nextcode%
if NOT EXIST cfgdata\infomsg.* goto COREERR
:45
set errcode=usealias.on/usealias.off
set nextcode=46
if EXIST cfgdata\usealias.* goto %nextcode%
if NOT EXIST cfgdata\usealias.* goto COREERR
:46
set errcode=colors.on/colors.off
set nextcode=Configur
if EXIST cfgdata\colors.* goto %nextcode%
if NOT EXIST cfgdata\colors.* goto COREERR

:COREER
color CF
echo = = = FATAL CORE FILE ERROR = = =
echo Super-Console failed to start, caused of %errcode% file.
echo Within this file Super-Console can't work normally.
echo Please contact with 020-340 or reinstall your S-C.
echo.
echo Program Super-Console nie moze zostac uruchomiony, poniewaz nie odnaleziono pliku %errcode%.
echo Bez tego pliku Super-Console nie moze dzialac normalnie
echo Prosze skontaktowac sie z 020-340 lub przeinstalowac S-C.
echo.
pause
goto End

:MODULEERR
color 1F
echo = = = MODULE MISSING = = =
echo Super-Console can't work in 100% normally, because %errcode% file is missing.
echo This file is an module, so is only included add-on. Super-Console can work normal without it.
echo But it's strongly recommended to reinstall S-C to regain this file.
echo.
echo Super-Console nie moze pracowac w 100% normalnie, poniewaz nie odnaleziono pliku %errcode%.
echo Ten plik jest modulem, wiec jest tylko uwzglednionym w programie dodatkiem. Super-Console moze pracowac normalnie bez niego.
echo Ale mocno zalecana jest reinstalacja programu, aby odzyskac ten plik.
echo.
echo This message will appear regularry, else you fix this error.
echo Ta wiadomosc bedzie sie pokazywac regularnie, chyba ze naprawisz ten blad.
echo.
echo ===Wybierz opcje aby kontynuowac
echo [L] Przejdz do uruchamiania S-C
echo [C] Kontynuuj sprawdzanie plikow
echo [E] Wyjdz z programu uruchamiajacego
echo ===UWAGA! Wielkie litery tez sie licza!
set /p input=
if %input%==L goto Configur
if %input%==C goto %nextcode%
if %input%==E goto End
color
goto End

:MAINMODULEERR
color 4F
echo = = = MAIN MODULE MISSING = = =
echo Super-Console failed to start, because main module %errcode% is missing.
echo Main modules are similar to other modules, but are used in CCP Core code, so it may cause critical bugs and errors.
echo Please reinstall your S-C or contact 020-340.
echo.
echo Super-Console nie moze zostac uruchomiony, poniewaz nie odnaleziono modulu glownego %errcode%.
echo Glowne moduly niczym sie nie roznia od zwyklych, ale sa uzywane w kodzie CCO Core, co moze sprawic krytyczne bledy i bugi.
echo Prosze zreinstalowac S-C lub zkontaktowac sie z 020-340.
echo.
pause
goto End

:INFOERR
color 87
echo = = = INFORMATION FILE MISSING = = =
echo There was a really stupid situation, because informational text file %errcode% is missing.
echo This file is not using in Super-Console work, but this file is INCLUDED in FILE CHECKER, what means this file can be an element of some modules or had some very important information.
echo It's recommended to DO NOT REINSTALL S-C, but go the 020-340 webpage and download free %errcode% file.
echo.
echo Jest naprawde glupia sytuacja, poniewaz informacyjny plik tekstowy %errcode% nie moze zostac odnaleziony.
echo Super-Console nie uzywa tego pliku podczas pracy, ale ten plik jest UWZGLEDNIONY w SPRAWDZANIU PLIKOW, co oznaczam ze ten plik moze byc uzywany przez jakis modul lub zawiera jakas bardzo wazna informacje.
echo Zalecane jest NIE REINSTALOWANIE S-C, ale wybranie sie na strone 020-340 i pobranie darmowego pliku %errcode%.
echo.
echo ===Wybierz opcje aby kontynuowac
echo [L] Przejdz do uruchamiania S-C
echo [C] Kontynuuj sprawdzanie plikow (zalecane)
echo [E] Wyjdz z programu uruchamiajacego
echo ===UWAGA! Wielkie litery tez sie licza!
set /p input=
if %input%==L goto Configur
if %input%==C goto %nextcode%
if %input%==E goto End
color
goto End

:Configur
color
if exist module.on goto Cfg001
:disableModule
[TODO]

:End
exit