
@echo off

@REM Copyright (c) 1998, 2015, Oracle and/or its affiliates. All rights reserved.

setlocal
set JC_CLASSIC_HOME=%~dp0\..
rem Print warning if no JAVA_HOME set
if not defined JAVA_HOME goto nojavahome

rem set classpath to all jars

set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\ant-contrib-1.0b3.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\api_classic_annotations.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\asm-all-3.1.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\bcel-5.2.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\commons-cli-1.0.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\commons-codec-1.3.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\commons-httpclient-3.0.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\commons-logging-1.1.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\jctasks.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\tools.jar;%JC_CLASSPATH%
        
set JC_CLASSPATH=%JC_CLASSIC_HOME%\lib\api_classic.jar;%JC_CLASSPATH%

rem execute scriptgen's Main class
"%JAVA_HOME%\bin\java" "-Djc.home=%JC_CLASSIC_HOME%" -classpath "%JC_CLASSPATH%" com.sun.javacard.scriptgen.Main %*
goto done
:nojavahome
echo JAVA_HOME is not set. Please set it to point to JDK 7 or JDK 8
:done
endlocal

rem Send the error code to the command interpreter
cmd /c Exit /B %errorlevel%
        