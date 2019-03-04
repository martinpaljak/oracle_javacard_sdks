#!/bin/sh
#
# $Workfile:$	$Revision:$, $Date:$
#
# Copyright (c) 2000 Sun Microsystems, Inc. All rights reserved.
#
# This software is the confidential and proprietary information of Sun
# Microsystems, Inc. ("Confidential Information").  You shall not
# disclose such Confidential Information and shall use it only in
# accordance with the terms of the license agreement you entered into
# with Sun.
# 
# SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
# SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
# PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR ANY DAMAGES
# SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
# THIS SOFTWARE OR ITS DERIVATIVES.
#


JC21BIN=${JC21BIN:-$HOME/bin}

java -native -classpath $JC21BIN/jcwde.jar:$JC21BIN/samples.jar:$JC21BIN/apduio.jar:$CLASSPATH:$JC21BIN/api21.jar  com.sun.javacard.jcwde.Main $*