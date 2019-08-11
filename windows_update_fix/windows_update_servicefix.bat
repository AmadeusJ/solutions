@echo off
sc query wuauserv > NULL
IF ERRORLEVEL 1060 GOTO :CREATEING

ECHO EXISTS
sc delete wuauserv
GOTO :CREATEING

:CREATEING
sc create wuauserv DisplayName= "Windows Update" binpath= "C:\WINDOWS\system32\svchost.exe -k netsvcs -p" Start= delayed-auto depend= RpcSs

rem set __COMPAT_LAYER=RunAsInvoker
REGEDIT.EXE /S "%~dp0\Windows_Udate.reg"
