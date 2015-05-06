@echo off
setlocal
set JC_TRIMMER_HOME=%~dp0
set JC_TRIMMING_TOOL_CRYPTO_VERBOSE=false

rem Print warning if no JAVA_HOME set
if not defined JAVA_HOME goto nojavahome

rem Print warning if no JC_CLASSIC_HOME set
if not defined JC_CLASSIC_HOME goto nojcclassichome

rem Print warning if no ANT_HOME set
if not defined ANT_HOME goto noanthome

echo %JC_TRIMMER_HOME%

rem set classpath to all jars
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\Trimmer.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\commons-cli-1.0.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\commons-codec-1.3.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\commons-httpclient-3.0.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\commons-logging-1.1.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\velocity-1.4.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\velocity-dep-1.4.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\bcel-5.2.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\help.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_TRIMMER_HOME%\lib\jhall.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH="%JC_CLASSIC_HOME%"\lib\tools.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH="%ANT_HOME%"\lib\ant.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH="%ANT_HOME%"\lib\ant-nodeps.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH="%ANT_HOME%"\lib\ant-launcher.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH="%JAVA_HOME%"\lib\tools.jar;%JCT_CLASSPATH%
set JCT_CLASSPATH=%JC_CLASSIC_HOME%\lib\JCBytecodeProfiler.jar;%JCT_CLASSPATH%

rem execute Timming Tool's Main class
"%JAVA_HOME%\bin\java" -Dtrimmer.home=%JC_TRIMMER_HOME% -classpath %JCT_CLASSPATH% com.sun.jctrimmer.ui.MainTree %*
goto done
:nojavahome
echo JAVA_HOME is not set - please set it to point to JDK 1.6
goto done
:nojcclassichome
echo JC_CLASSIC_HOME is not set - please set it to point to Java Card Classic Edition 3.0.3 SDK
goto done
:noanthome
echo ANT_HOME is not set - please set it to point to apache ant 1.6.5 or higher
goto done
:done
endlocal
