@echo off
goto Mainframe

:Mainframe
echo Konfigurator programu Super-Console 2.1
echo Wersja 0.1
echo.
echo ===Wybierz opcje:
echo config - rozpocznij konfiguracje programu.
echo exit - opusc konfigurator.
echo look - przejrzyj konfiguracje.
set /p input=Wybor:
if %input%=config goto SetConfig
if %input%=look goto LookConfig
if %input%=exit goto Exit

:Look

cls
echo Przegladanie konfiguracji Super-Console 2.1
echo Jezeli jakas opcja sie powtarza, zglos blad to autora S-C lub przeinstaluj program.
cd %cd%\cfgdata\
if exist debug.off echo Debug (debug.off) - Tryb debugowania jest wylaczony.
if exist debug.on echo Debug (debug.on) - Tryb debugowania jest wylaczony.
if exist usealias.off echo Alias (usealias.off) - Aliasy komend sa wlaczone.
if exist usealias.on echo Alias (usealias.on) - Aliasy komend sa wylaczone.
if exist module.off echo Module (module.off) - Moduly dodatkowe sa wylaczone.
if exist module.on echo Module (module.on) - Moduly dodatkowe sa wlaczone.
if exist colors.off echo Colors (colors.off) - Kolory dodatkowe interfejsu konsoli sa wylaczone.
if exist colors.on echo Colors (colors.on) - Kolory dodatkowe interfejsu konsoli sa wlaczone.
if exist pressmode.off echo PressMode (pressmode.off) - Tryb wpisywania dla wybierania opcji.
if exist pressmode.on echo PressMode (pressmode.on) -  Tryb klawiszowy dla wybierania opcji.
if exist infomsg.off echo InfoSys (infomsg.off) - Tryb informowania 32-bitowymi okienkami jest wylaczony.
if exist infomsg.on echo InfoSys (infomsg.on) - Tryb informowania 32-bitowymi okienkami jest wlaczony.
if exist log.off echo Log (log.off; Logi niedostepne!) - Logowanie operacji jest wylaczone
if exist log.on echo Log (log.on; Logi niedostepne!) - Logowanie operacji jest wlaczone
echo.
pause
goto Mainframe

:SetConfig
 
echo Tu mozesz skonfigurowac swoj program.
echo ===Wybierz konfiguracje:
echo NoModule - Nie laduj dodatkowych modulow
echo ReModule - Jezeli moduly dodatkowe sa wylaczone, wlacz je ta komenda
echo NoAlias - Wylacz aliasy komend
echo ReAlias - Jezeli wylaczyles aliasy, mozesz je przywrocic ta opcja
echo Blackout - Nie uzywaj kolorow
echo Rainbow - Przywroc kolory, jesli wylaczone
echo Log - Wlacz logi
echo NoLog -  Wylacz logi, jesli wlaczone
echo DelWorkbench - Usun folder workbench (Niedostepne w MATcSYSTEM)
echo InfoSys - Uzywaj okienek z informacjami
echo InfoStd - Nie uzywaj okienek z informacjami
echo Debug - Tryb awaryjny/debugowania
echo Back - Powrot do trybu normalnego z trybu debugowania
echo PressModeOn - Wylacz tryb wpisywania dla opcji i ustaw tryb klawiszowy
echo PressModeOff - Wylacz tryb klawiszowy dla opcji i ustaw tryb wpisywania
echo.
echo MF - Wroc do glownego menu
echo E - Wyjdz z konfiguratora
echo ==UWAGA! Wielkie litery tez sie licza!
set /p input=Wybor:
if %input%=NoModule goto NoModule
if %input%=ReModule goto ReModule
if %input%=NoCheck goto NoCheck
if %input%=ReCheck goto ReCheck
if %input%=NoAlias goto NoAlias
if %input%=ReAlias goto ReAlias
if %input%=Blackout goto Blackout
if %input%=Rainbow goto Rainbow
if %input%=Log goto Log
if %input%=NoLog goto NoLog
if %input%=DelWorkbench goto DelWorkbench
if %input%=InfoSys goto InfoSys
if %input%=InfoStd goto InfoStd
if %input%=Debug goto Debug
if %input%=Back goto Back
if %input%=PressModeOn goto PressModeOn
if %input%=PressModeOff goto PressModeOff
if %input%=MF goto Mainframe
if %input%=E goto Exit

:NoModule

cls
echo Wybrano opcje NoModule
set theconfig=NoModule
cd %cd%\cfgdata\
if exist module.off goto SetCfgFail
if exist module.on ren module.on module.off
goto SetCfgSuccess

:ReModule

cls
echo Wybrano opcje ReModule
set theconfig=ReModule
cd %cd%\cfgdata\
if exist module.on goto SetCfgFail
if exist module.off ren module.off module.on
goto SetCfgSuccess

:NoAlias

cls
echo Wybrano opcje NoAlias
set theconfig=ReAlias
cd %cd%\cfgdata\
if exist usealias.off goto SetCfgFail
if exist usealias.on ren usealias.on usealias.off
goto SetCfgSuccess

:ReAlias

cls
echo Wybrano opcje ReAlias
set theconfig=ReAlias
cd %cd%\cfgdata\
if exist usealias.on goto SetCfgFail
if exist usealias.off ren usealias.off usealias.on
goto SetCfgSuccess

:Blackout

cls
echo Wybrano opcje Blackout
set theconfig=Blackout
cd %cd%\cfgdata\
if exist colors.off goto SetCfgFail
if exist colors.on ren colors.on colors.off
goto SetCfgSuccess

:Rainbow

cls
echo Wybrano opcje Rainbow
set theconfig=Rainbow
cd %cd%\cfgdata\
if exist colors.on goto SetCfgFail
if exist colors.off ren colors.off colors.on
goto SetCfgSuccess

:DelWorkbench

cls
echo Wybrano opcje DelWorkbench
echo Y - Tak; N - Nie (Y/N)
set /p input=Czy aby napewno chcesz usunac ten folder?
if %input%=Y rmdir %cd%\workbench\
if %input%=y rmdir %cd%\workbench\
if %input%=N goto SetConfig
if %input%=n goto SetConfig
goto SetConfig

:Log

echo Wybrano opcje Log
echo Ta opcja chwilowo nie jest dostepna. Mozliwe, ze zostanie dodana przy nastepnej aktualizacji!
pause
goto SetConfig

:NoLog

echo Wybrano opcje NoLog
echo Ta opcja chwilowo nie jest dostepna. Mozliwe, ze zostanie dodana przy nastepnej aktualizacji!
pause
goto SetConfig

:InfoSys

echo Wybrano opcje InfoSys
set theconfig=InfoSys
cd %cd%\cfgdata\
if exist infomsg.on goto SetCfgFail
if exist infomsg.off ren infomsg.off infomsg.on
goto SetCfgSuccess

:InfoStd

echo Wybrano opcje InfoStd
set theconfig=InfoStd
cd %cd%\cfgdata\
if exist infomsg.on goto SetCfgFail
if exist infomsg.off ren infomsg.off infomsg.on
goto SetCfgSuccess

:Debug

echo Wybrano opcje Debug
set theconfig=Debug
cd %cd%\cfgdata\
if exist debug.on goto SetCfgFails
if exist debug.off ren debug.off debug.on
echo Ustawiono tryb debugowania jako domyslny przy starcie programu.
echo Aby przywrocic tryb normalny uzyj w konfiguratorze opcji Back.
if exist module.on ren module.off
echo Moduly zostaly wylaczone
if exist color.on ren color.on color.off
echo Kolory zostaly wylaczone
if exist usealias.on ren usealias.on usealias.off
echo Aliasy zostaly wylaczone
if exist infomsg.off ren infomsg.off infomsg.on
echo Wlaczono informacje okienkowe
if exist log.off ren log.off log.on
echo Logi zostaly wlaczone (Logi chwilowo niedostepne)
echo UWAGA! Tryb debugowania wlaczony!
pause
goto SetCfgSuccess

:Back

echo Wybrano opcje Back
set theconfig=Back
cd %cd%\cfgdata\
if exist debug.off goto SetCfgFails
if exist debug.on ren debug.on debug.off
echo Ustawiono tryb normalny jako domyslny przy starcie programu.
echo Aby zpowrotem wlaczyc tryb debugowania wlacz w konfiguratorze opcje Debug.
if exist module.off ren module.on
echo Moduly zostaly wlaczone
if exist color.off ren color.off color.on
echo Kolory zostaly wlaczone
if exist usealias.off ren usealias.off usealias.on
echo Aliasy zostaly wlaczone
echo Tryb normalny wlaczony!
pause
goto SetCfgSuccess

:PressModeOn

echo Wybrano opcje PressModeOn
set theconfig=PressModeOn
cd %cd%\cfgdata\
if exist pressmode.on goto SetCfgFail
if exist pressmode.off ren pressmode.off pressmode.on
goto SetCfgSuccess

:PressModeOff

echo Wybrano opcje PressModeOff
set theconfig=PressModeOff
cd %cd%\cfgdata\
if exist pressmode.off goto SetCfgFail
if exist pressmode.on ren pressmode.on pressmode.off
goto SetCfgSuccess

:SetCfgSuccess

cd %cd%
echo Konfiguracja %theconfig% zakonczona powodzeniem!
pause
goto SetConfig

:SetCfgFail

cd %cd%
echo Nie udalo sie zkonfigurowac %theconfig%!
echo Byc moze ta konfiguracja jest juz ustawiona
pause
goto SetConfig

:Exit
