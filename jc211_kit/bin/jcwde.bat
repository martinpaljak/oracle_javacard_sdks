@ECHO OFF
REM
REM Copyright (c) 2000 Sun Microsystems, Inc. All rights reserved.
REM
REM This software is the confidential and proprietary information of Sun
REM Microsystems, Inc. ("Confidential Information").  You shall not
REM disclose such Confidential Information and shall use it only in
REM accordance with the terms of the license agreement you entered into
REM with Sun.
REM 
REM SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
REM SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
REM IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
REM PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR ANY DAMAGES
REM SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
REM THIS SOFTWARE OR ITS DERIVATIVES.

rem 	example:
rem 		set CLASSPATH=%CLASSPATH%;L:\Vss\Products\Europa\samples
rem 		jcwde -p 9025 ..\tests\JP.cfg

IF "%JC21BIN%" == "" SET JC21BIN=L:\JC21TOOLS\bin

java -classpath %JC21BIN%\jcwde.jar;%JC21BIN%\samples.jar;%JC21BIN%\apduio.jar;%CLASSPATH%;%JC21BIN%\api21.jar  com.sun.javacard.jcwde.Main %1 %2 %3 %4 %5 %6 %7 %8 %9
