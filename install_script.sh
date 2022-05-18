#! /bin/bash

#iws.sh(install work soft)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then 
    RELISE=`cat /etc/*-release|tr "\n" " "`
    
    for name in 'UBUNTU' 'DEBIAN' 'Fedora' 'ARCH'
    do
        echo $RELISE | grep -i -q $name && name_os=$name
    done
    
    if  [[ $name_os == "UBUNTU" || $name_os == "DEBIAN" ]]; then
        apt-get install vim

        apt-get install emacs

        apt-get install tmux

        apt-get install git

        apt-get install mc

        apt-get install fish
        exit 0
    elif [[ $name_os == "Fedora" ]]; then
        echo "Your operating system -- Fedora"

        dnf install vim

        dnf install emacs

        dnf install tmux

        dnf install git

        dnf install mc

        dnf install fish

        exit 0
    elif [[ $name_os == "ARCH" ]]; then

        pacman -S vim

        pacman -S emacs

        pacman -S tmux

        pacman -S git

        pacman -S mc

        pacman -S fish
    fi
     exit 0
elif [[ "$OSTYPE" == "freebsd"* ]]; then

    echo "..."

fi




