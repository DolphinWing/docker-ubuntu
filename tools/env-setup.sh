#!/bin/bash

CPATH=/opt/tools #`pwd`

if [ "$1" == "root"]; then
    chmod 644 $CPATH/docker-prompt
    chmod 644 $CPATH/.vimrc
    chmod 644 $CPATH/.inputrc
fi

cp $CPATH/.vimrc ~/
cp $CPATH/.inputrc ~/
