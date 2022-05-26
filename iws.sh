#! /bin/bash

#iws.sh(install work soft)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then 
    RELISE=`cat /etc/*-release|tr "\n" " "`
    
    for name in 'Debian' 'Ubuntu' 'Fedora' 'Arch'
    do
        echo $RELISE | grep -i -q $name && name_os=$name
    done
    
    if  [[ $name_os == "Debian" || $name_os == "Ubuntu" ]]; then
        echo "Your operating system is based on Debian"

        apt-get update

        apt-get install vim
        #here you need to download .vimrc with "https://github.com /lomovsuperuser/vimrc " and paste it ~/%username%
        
        apt-get install emacs
        #here you need to download .emacs and init.el from "https://github.com/lomovsuperuser/emacs " and paste it ~/%username%/ and ~/%username%/emacs/

        apt-get install tmux

        apt-get install git

        apt-get install mc

        apt-get install fish

        exit 0
    elif [[ $name_os == "Fedora" ]]; then
        echo "Your operating system -- Fedora"

        dnf update --assumeno

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
 
        pkg update

        pkg install vim

        pkg install emacs

        pkg install tmux

        pkg install git

        pkg install mc

        pkg install fish

fi
exit 0



