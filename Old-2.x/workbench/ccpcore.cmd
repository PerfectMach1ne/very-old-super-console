@echo off
cd %cd%
title Sprawdzanie plikow
color 8A
echo Super-Console Beta 2.0.0013 Indev
echo Sprawdzanie plikow, to zajmie chwile . . .
goto 00

:00
set errcode=howto.exe
set nextcode=01
if EXIST howto.exe goto 01
if NOT EXIST howto.exe goto COREERR
:01
set errcode=readme.exe
set nextcode=02
if EXIST readme.exe goto 02
if NOT EXIST readme.exe goto COREERR
:02
set errcode=readme.txt
set nextcode=03
if EXIST readme.txt goto 03
if NOT EXIST readme.txt goto COREERR
:03
set errcode=base64.exe
set nextcode=04
if EXIST base64.exe goto 04
if NOT EXIST base64.exe goto MODULEERR
:04
set errcode=cliptext.exe
set nextcode=05
if EXIST cliptext.exe goto 05
if NOT EXIST cliptext.exe goto MODULEERR
:05
set errcode=closewindow.exe
set nextcode=06
if EXIST closewindow.exe goto 06
if NOT EXIST closewindow.exe goto MODULEERR
:06
set errcode=crc32.exe
set nextcode=07
if EXIST crc32.exe goto 07
if NOT EXIST crc32.exe goto MODULEERR
:07
set errcode=cscpvbs.exe
set nextcode=08
if EXIST cscpvbs.exe goto 08
if NOT EXIST cscpvbs.exe goto MODULEERR
:08
set errcode=CSweg.exe
set nextcode=09
if EXIST CSweg.exe goto 09
if NOT EXIST CSweg.exe goto MODULEERR
:09
set errcode=Swreg.exe
set nextcode=10
if EXIST Swreg.exe goto 10
if NOT EXIST Swreg.exe goto MODULEERR
:10
set errcode=download.exe
set nextcode=11
if EXIST download.exe goto 11
if NOT EXIST download.exe goto MODULEERR
:11
set errcode=far.exe
set nextcode=12
if EXIST far.exe goto 12
if NOT EXIST far.exe goto MODULEERR
:12
set errcode=fcmp.exe
set nextcode=13
if EXIST fcmp.exe goto 13
if NOT EXIST fcmp.exe goto MODULEERR
:13
set errcode=GoRC.exe
set nextcode=14
if EXIST GoRC.exe goto 14
if NOT EXIST GoRC.exe goto MODULEERR
:14
set errcode=hidewindow.exe
set nextcode=15
if EXIST hidewindow.exe goto 15
if NOT EXIST hidewindow.exe goto MODULEERR
:15
set errcode=isadmin.exe
set nextcode=16
if EXIST isadmin.exe goto 16
if NOT EXIST isadmin.exe goto MAINMODULEERR
:16
set errcode=LS.exe
set nextcode=17
if EXIST LS.exe goto 17
if NOT EXIST LS.exe goto MODULEERR
:17
set errcode=maximizewindow.exe
set nextcode=18
if EXIST maximizewindow.exe goto 18
if NOT EXIST maximizewindow.exe goto MODULEERR
:18
set errcode=MD5File.exe
set nextcode=19
if EXIST MD5File.exe goto 19
if NOT EXIST MD5File.exe goto MODULEERR
:19
set errcode=moveex.exe
set nextcode=20
if EXIST moveex.exe goto 20
if NOT EXIST moveex.exe goto MODULEERR
:20
set errcode=procs.exe
set nextcode=21
if EXIST procs.exe goto 21
if NOT EXIST procs.exe goto MODULEERR
:21
set errcode=psservice.exe
set nextcode=22
if EXIST psservice.exe goto 22
if NOT EXIST psservice.exe goto MODULEERR
:22
set errcode=resizewindow.exe
set nextcode=23
if EXIST resizewindow.exe goto 23
if NOT EXIST resizewindow.exe goto MODULEERR
:23
set errcode=RIrsl.exe
set nextcode=24
if EXIST RIrsl.exe goto 24
if NOT EXIST RIrsl.exe goto MODULEERR
:24
set errcode=setwindowtitle.exe
set nextcode=25
if EXIST setwindowtitle.exe goto 25
if NOT EXIST setwindowtitle.exe goto MODULEERR
:25
set errcode=SF.exe
set nextcode=26
if EXIST SF.exe goto 26
if NOT EXIST SF.exe goto MODULEERR
:26
set errcode=sha1.exe
set nextcode=27
if EXIST sha1.exe goto 27
if NOT EXIST sha1.exe goto MODULEERR
:27
set errcode=sizeof.exe
set nextcode=28
if EXIST sizeof.exe goto 28
if NOT EXIST sizeof.exe goto MODULEERR
:28
set errcode=sleep.exe
set nextcode=29
if EXIST sleep.exe goto 29
if NOT EXIST sleep.exe goto MODULEERR
:29
set errcode=swsc.exe
set nextcode=30
if EXIST swsc.exe goto 30
if NOT EXIST swsc.exe goto MODULEERR
:30
set errcode=unzip.exe
set nextcode=31
if EXIST unzip.exe goto 31
if NOT EXIST unzip.exe goto MODULEERR
:31
set errcode=vbstoexe.exe
set nextcode=32
if EXIST vbstoexe.exe goto 32
if NOT EXIST vbstoexe.exe goto MODULEERR
:32
set errcode=WINMSG.exe
set nextcode=33
if EXIST WINMSG.exe goto 33
if NOT EXIST WINMSG.exe goto MODULEERR
:33
set errcode=zip.exe
set nextcode=34
if EXIST zip.exe goto 34
if NOT EXIST zip.exe goto MODULEERR
:34
set errcode=locate.com
if EXIST locate.com goto FCSUCCESS
if NOT EXIST locate.com goto MODULEERR

:COREERR
cls
color 4F
echo Wystapil powazny blad programu! Nie odnaleziono pliku %errcode%!
echo Bez tego pliku program Super-Console nie moze dzialac normalnie.
echo Aby naprawic ten problem, zaleca sie przeinstalowanie S-C.
echo.
pause
goto End

:MODULEERR
cls
color 1F
echo Wystapil blad podczas ladowania modulu %errcode%!
echo Aby naprawic ten problem, zaleca sie przeinstalowanie S-C.
echo.
echo Mozesz kontynuowac prace programu bez tego modulu wybierajac ' W '.
echo Mozesz zakonczyc prace programu wybierajac ' E '
echo Albo mozesz kontynuowac sprawdzanie plikow klikajac ' C '
echo.
set /p choice=
if %choice%==w goto Launch
if %choice%==e goto End
if %choice%==c goto %nextcode%
if %choice%==W goto Launch
if %choice%==E goto End
if %choice%==C goto %nextcode%
goto End
cls

:MAINMODULEERR
cls
color 8F
echo Wystapil blad podczas ladowania modulu glownego! Nie odnaleziono %errcode%!
echo Moduly glowne to dodatkowe aplikacje, ktore sa wywolywane podczas pracy konsoli przez program.
echo Aby naprawic ten problem, zaleca sie przeinstalowanie S-C.
echo.
echo Mozesz kontynuowac prace programu bez modulu glownego wybierajac ' W '
echo Mozesz zakonczyc prace programu wybierajac ' E '
echo Albo mozesz kontynuowac sprawdzanie plikow klikajac ' C '
echo.
set /p choice=
if %choice%==w goto Launch
if %choice%==e goto End
if %choice%==c goto %nextcode%
if %choice%==W goto Launch
if %choice%==E goto End
if %choice%==C goto %nextcode%
goto End
cls

:FCSUCCESS
color 2A
echo Sprawdzanie plikow zakonczone pomyslnie!
echo Aby kontynuowac prace konsoli wcisnij dowolny klawisz.
pause>nul

:Launch
color 1B
cls
title Super-Console 2.x
echo Super Console 2.0 Beta (Indev)
isadmin
echo Pomoc do konsoli/lista dodatkowych komend - 'howto'
call cmd

:End