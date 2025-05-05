#!/bin/sh
#
# Copyright (c) 1998, 2025, Oracle and/or its affiliates. All rights reserved.

# Print warning if no JAVA_HOME set
if [ -z "${JAVA_HOME}" ]; then
	echo "JAVA_HOME is not set. Please set it to point to JDK 17"
	exit 1
fi

JC_LIBS=$(dirname $(realpath $0))/../lib

# set classpath to all jars
JC_CLASSPATH=$JC_LIBS/commons-cli-1.9.0.jar:$JC_CLASSPATH
JC_CLASSPATH=$JC_LIBS/jctasks_tools.jar:$JC_CLASSPATH
JC_CLASSPATH=$JC_LIBS/json.jar:$JC_CLASSPATH
JC_CLASSPATH=$JC_LIBS/tools.jar:$JC_CLASSPATH

# execute capgen's Main class
$JAVA_HOME/bin/java -cp ".:${JC_CLASSPATH}" com.sun.javacard.jcasm.cap.Main "$@"

