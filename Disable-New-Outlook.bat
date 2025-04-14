@Echo Off
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\General" /v "HideNewOutlookToggle" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Preferences" /v "UseNewOutlook" /t REG_DWORD /d "0" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo This program disables the New Outlook from the registries. To run this program you must have administrator rights. Please close the program and run as administrator ... 
 Pause & Exit
)
Cls
goto:eof
