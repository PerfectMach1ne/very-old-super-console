@echo off
:PreSetup
cls
cd %cd%
title Super-Console 3.0
echo Super-Console 3.0 Standard [3.0.0053 Beta]
echo 2011-2013 by 020-340
goto :Setup

:Setup
if exist epaczked.cmd epaczked
doskey ccp=echo Program juz jest uruchomiony!
doskey ccpinit=echo Program juz jest uruchomiony!
doskey stop=exit
doskey e=exit
doskey dh=help
doskey defhelp=help
doskey dhelp=help
doskey defh=help
doskey swver=echo Super-Console 3.0 Beta; wersja Standard ;build #0053
doskey verhistory=type %cd%\cache\INFORM~1\CHANGE~1.TXT
doskey changelog=type %cd%\cache\INFORM~1\CHANGE~1.TXT
doskey copying=type %cd%\cache\INFORM~1\license.txt
doskey license=type %cd%\cache\INFORM~1\license.txt
doskey readme=type %cd%\cache\INFORM~1\readme.txt
doskey info=type %cd%\cache\INFORM~1\readme.txt
doskey readmehelp=type %cd%\cache\INFORM~1\readme.txt
goto :UI

:UI
prompt $LSuper-Console$S3.0$G$S
call cmd

:End
exit