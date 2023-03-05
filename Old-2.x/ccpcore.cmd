@echo off
cd %cd%
title Super-Console - Setowanie aliasow
color 1B
echo Super-Console Beta 2.1.0031
echo Poczekaj, aliasy sa setowane w tej chwili . . .
goto SetAliases

:SetAliases
doskey oj6=openjava6
doskey oj7=openjava7
doskey verhistory=changelog
doskey ccp=echo Blad! Program juz jest uruchomiony!
doskey stop=exit
doskey e=exit
doskey dh=help
doskey defhelp=help
doskey dhelp=help
doskey defh=help
doskey swver=echo Super-Console 2.1 Beta; build #0031
doskey calc+=calcplus
doskey cppcalc=calcplus
doskey kalkulatorplus=calcplus 
doskey kalkulator+=calcplus
doskey config=setting
goto Launch

:Launch
cls
title Super-Console 2.x
echo Super Console 2.1 Beta
echo Pomoc do konsoli/lista dodatkowych komend - 'howto'
isadmin
call cmd

:End