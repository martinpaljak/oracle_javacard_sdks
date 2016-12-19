
@echo off
rem
rem Copyright (c) 1998, 2015, Oracle and/or its affiliates. All rights reserved.
rem
rem in Java Card 2 there was only cref.exe, but now we provide cref_t0.exe,
rem cref_t1.exe, and cref_tdual.exe.
rem
@echo off
setlocal
set JC_CLASSIC_HOME=%~dp0\..
rem this batch file is provided as a easy way to call the new .exe's.
rem
rem "cref.bat args" will call "cref_tdual.exe args"
rem
rem "cref.bat -t0 args" will call "cref_t0.exe args"
rem "cref.bat -t1 args" will call "cref_t1.exe args"
rem "cref.bat -tdual args" will call "cref_tdual.exe args"
rem
setlocal
set list=
set target=cref_tdual
:loop
if "%1"=="" goto done
if "%1"=="-t0" (
 set target=cref_t0
 shift
 goto loop
)
if "%1"=="-t1" (
 set target=cref_t1
 shift
 goto loop
)
if "%1"=="-tdual" (
 set target=cref_tdual
 shift
 goto loop
)
set list=%list% %1
shift
goto loop
:done
call "%JC_CLASSIC_HOME%\bin\%target%.exe" %list%
endlocal
                