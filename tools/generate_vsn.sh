#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
GIT_VSN=`git describe --always --tags 2>/dev/null`

if [ $? -eq 0 ]; then
	echo $GIT_VSN
else
	echo `cat ${DIR}/../VERSION`
fi
