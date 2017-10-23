#!/bin/bash

# get the source from Github
LTREPO=https://github.com/pothi/linux-tweaks-deb
echo 'Downloading Linux Tweaks from Github repo at '$LTREPO
rm -rf /root/ltweaks &> /dev/null
git clone $LTREPO /root/ltweaks

# Common shell related configs
cp /root/ltweaks/common-aliases.sh /etc/profile.d/
source /root/ltweaks/common-aliases.sh

cp /root/ltweaks/common-exports.sh /etc/profile.d/
source /root/ltweaks/common-exports.sh

# For ZSH
# cp /root/ltweaks/zprofile /etc/zsh/zprofile
# source /root/ltweaks/zprofile
# cp /root/ltweaks/zshrc /etc/zsh/zshrc
# source /root/ltweaks/zshrc

# Vim related configs
cp /root/ltweaks/vimrc.local /etc/vim/
cp -a /root/ltweaks/vim/* /usr/share/vim/vim74/

# Misc files
cp /root/ltweaks/gitconfig /etc/gitconfig
# the following will be removed in a future version
# cp /root/ltweaks/tmux.conf /etc/tmux.conf

# Clean up
rm -rf /root/ltweaks/

echo 'Linux tweaks are done.'
