#!/bin/bash

# Install fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

# Make sure that fish shell was installed
if test -f "/usr/bin/fish"; then
    echo "fish shell has been successfully installed."
else
    echo "Cannot install fish shell."
    exit
fi

# Make a backup copy of the current .bash_profile, if any
if test -f "$HOME/.bash_profile"; then
    cp $HOME/.bash_profile $HOME/.bash_profile.bak
fi
cp $(pwd)/dotfiles/.bash_profile $HOME/.bash_profile

# Start fish shell
if [ "$SHELL" == "/bin/bash" ]
then
    export SHELL="/usr/bin/fish"
    exec /usr/bin/fish -l
fi
