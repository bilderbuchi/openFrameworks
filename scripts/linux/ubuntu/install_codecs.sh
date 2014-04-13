#!/bin/bash

if [ "$1" == "--unattended" ]; then
    echo "Running script unattended"
    APTGET_OPTION="-yq"
else
    APTGET_OPTION=""
fi

GSTREAMER_VERSION=0.10

RET=$(apt-cache show -n libgstreamer1.0-dev &> /dev/null; echo $?)

if [ "$RET" -eq "0" ]; then
    GSTREAMER_VERSION=1.0
fi

echo "Sudo permissions are needed for running the package manager."
sudo apt-get $APTGET_OPTION install libmpg123-dev gstreamer${GSTREAMER_VERSION}-plugins-ugly
exit_code=$?
if [ $exit_code != 0 ]; then
    echo "error installing codecs, there could be an error with your internet connection"
    echo "if the error persists, please report an issue in github: http://github.com/openframeworks/openFrameworks/issues"
	exit $exit_code
fi
