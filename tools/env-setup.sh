#!/bin/bash

CPATH=/opt/tools #`pwd`

if [ "$1" == "user" ]; then
    echo "I'm a user!"
    prepfix="echo '123456' | sudo -S"
else #root
    echo "I'm root!"
    #chmod 664 $CPATH/docker-prompt
    #chmod 664 $CPATH/.vimrc
    #chmod 664 $CPATH/.inputrc
    prefix=
fi

${prefix} cp $CPATH/.vimrc ~/
${prefix} cp $CPATH/.inputrc ~/

