#! /bin/bash

#install work soft
if [[ "$OSTYPE" == "linux-gnu"* ]]; then 
    RELISE=`cat /etc/*-release| tr "\n" " "`

    for name in 'UBUNTU' 'DEBIAN'
    do
            name_os=`$RELISE | grep -i -q $name`
    done
    
    if  [[ $name_os == "UBUNTU"  $name_os == "DEBIAN" ]]; then
        apt-get install vim

        apt-get install emacs

        apt-get install tmux

        apt-get install git

        apt-get install links

        apt-get install telegram-cli

elif [[ "$OSTYPE" == "freebsd"* ]]; then
