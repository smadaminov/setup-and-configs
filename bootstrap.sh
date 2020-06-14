#!/bin/bash

# Install fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

# Install patched nerd font Hack
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install Hack
cd .. && rm -rf nerd-fonts

# Install tmux 2.4 version
## First install required packages
sudo apt-get install -y automake
sudo apt-get install -y bison
sudo apt-get install -y build-essential
sudo apt-get install -y pkg-config
sudo apt-get install -y libevent-dev
sudo apt-get install -y libncurses5-dev
sudo apt-get install -y xsel # This is required to support copy to OS clipboard
## Install tmux
rm -rf /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
git checkout 2.4
sh autogen.sh
./configure && make
sudo make install
cd - && rm -rf /tmp/tmux

# Tmux configuration files
ln -sf $(pwd)/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf $(pwd)/dotfiles/.tmux.conf.local ~/.tmux.conf.local

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
