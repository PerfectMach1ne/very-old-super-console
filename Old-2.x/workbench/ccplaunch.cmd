@echo off
cd %cd%
title CCP Launcher for Super-Console 2.1+
rem %username% has just launched Super-Console Launcher 1.2 on %computername% on dir. %cd%!
rem Super-Console launcher version 1.2.0.0
cd %cd%\cfgdata\
if exist debug.off goto NoDebug
if exist debug.on goto Debug

:Debug
call debugsetup.cmd
goto End

:NoDebug
call standardsetup.cmd

:End