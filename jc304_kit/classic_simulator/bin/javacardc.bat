
@echo off
setlocal
echo Java Card 3.0.2 Compiler
set JC_CONNECTED_HOME=%~dp0\..
rem Print warning if no JAVA_HOME set
if not defined JAVA_HOME goto nojavahome
"%JAVA_HOME%\bin\javac" -processorpath %JC_CONNECTED_HOME%\lib\jcapt.jar -processor com.sun.javacard.apt.JCAnnotationProcessor -Amode=connected %*
goto done
:nojavahome
echo JAVA_HOME is not set - please set it to point to JDK 1.6
:done
endlocal
        