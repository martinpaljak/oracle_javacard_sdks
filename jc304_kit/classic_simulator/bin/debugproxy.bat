@echo off
setlocal
set JC_CONNECTED_HOME=%~dp0\..
rem Print warning if no JAVA_HOME set
if not defined JAVA_HOME goto nojavahome
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\ant-contrib-1.0b3.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\commons-cli-1.0.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\commons-codec-1.3.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\commons-httpclient-3.0.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\commons-logging-1.1.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\bcel-5.2.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\asm-all-3.1.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\tools.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\romizer.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\api.jar;%JC_CLASSPATH%
set JC_CLASSPATH=%JC_CONNECTED_HOME%\lib\api_connected.jar;%JC_CLASSPATH%
rem execute debugproxy's Main class
"%JAVA_HOME%\bin\java" -Djc.home=%JC_CONNECTED_HOME% -classpath %JC_CLASSPATH% com.sun.javacard.debugproxy.Main %*
goto done
:nojavahome
echo JAVA_HOME is not set - please set it to point to JDK 1.6
:done
endlocal

rem Send the error code to the command interpreter
cmd /c Exit /B %errorlevel%
