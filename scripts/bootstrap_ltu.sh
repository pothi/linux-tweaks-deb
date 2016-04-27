#!/bin/bash

# to be run as root, probably as a user-script just after a server is installed

# as root
if [[ $USER != "root" ]]; then
	echo "This script must be run as root"
	exit 1
fi

# TODO - change the default repo, if needed - mostly not needed on most hosts

LOG_FILE=/root/log/linux-tweaks.log
exec > >(tee -a ${LOG_FILE} )
exec 2> >(tee -a ${LOG_FILE} >&2)

# take a backup
mkdir -p /root/{backups,log,scripts,tmp,git,src,others}

# take a backup
echo 'Taking an initial backup'
LT_DIRECTORY="/root/backups/etc-$(date +%F)-linux-tweaks-ubuntu1604-before"
if [ ! -d "$LT_DIRECTORY" ]; then
	cp -a /etc $LT_DIRECTORY
fi

DEBIAN_FRONTEND=noninteractive apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y
DEBIAN_FRONTEND=noninteractive apt-get autoremove -y

# Install pre-requisites
echo 'Install prerequisites'
DEBIAN_FRONTEND=noninteractive apt-get install -y zsh zsh-doc \
	tmux bc \
	build-essential apt-show-versions unattended-upgrades \
	unzip zip \
	dnsutils \
	vim vim-doc vim-scripts \
	subversion git \
	mlocate \
	python-pip \
	logwatch postfix mailutils \
	fail2ban 

echo 'Install AWS CLI tools'
pip install awscli

# setup timezone
timedatectl set-timezone UTC
if [ $? != 0 ]; then
	echo 'Error setting up timezone'
fi

# UFW
ufw default deny incoming

ufw allow 22
ufw allow 80
ufw allow 443

ufw --force enable
if [ $? != 0 ]; then
	echo 'Error setting up firewall'
fi

# get the source from Github
echo 'Downloading Linux Tweaks from Github repo at https://github.com/pothi/linux-tweaks-ubuntu-16-04'
rm -rf /root/ltu
git clone --recursive https://github.com/pothi/linux-tweaks-ubuntu-16-04.git /root/ltu

# Shell related configs
cp /root/ltu/tiny_* /etc/profile.d/

cp /root/ltu/zprofile /etc/zsh/zprofile
cp /root/ltu/zshrc /etc/zsh/zshrc

# Vim related configs
cp /root/ltu/vimrc.local /etc/vim/vimrc.local
cp -a /root/ltu/vim/* /usr/share/vim/vim74/

# Misc files
cp /root/ltu/tmux.conf /etc/tmux.conf
cp /root/ltu/gitconfig /etc/gitconfig

# Clean up
rm -rf /root/ltu/


# Common for all users
echo 'Setting up skel'
touch /etc/skel/.viminfo
echo 'HISTFILE=~/log/zsh_history' >> /etc/skel/.zshrc
echo 'export EDITOR=vim' >> /etc/skel/.zshrc
echo 'export VISUAL=vim' >> /etc/skel/.zshrc

# attempt to create a log directory, if not exists
echo "set silent !mkdir ~/log > /dev/null 2>&1" >> /etc/skel/.vimrc
# Change the path to viminfo; from ~/.viminfo to ~/log/viminfo
echo "set viminfo+=n~/log/viminfo" >> /etc/skel/.vimrc

# Copy common files to root
cp /etc/skel/.viminfo /root/
cp /etc/skel/.zshrc /root/
cp /etc/skel/.vimrc /root/


# Change Shell
echo 'Changing shell for root to ZSH'
chsh --shell /usr/bin/zsh

#### Update Pathogen (optional)
echo 'Updating Pathogen (for VIM)'
wget -q -O /root/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
if [ -s /root/pathogen.vim ]; then
	mv /root/pathogen.vim /usr/share/vim/vim74/autoload/pathogen.vim
else
	rm /root/pathogen.vim
fi

# Setup some helper tools
echo 'Downloading ps_mem.py, mysqltuner and tuning-primer, etc'
wget -q -O /root/ps_mem.py http://www.pixelbeat.org/scripts/ps_mem.py && chmod +x /root/ps_mem.py
wget -q -O /root/scripts/mysqltuner.pl https://raw.github.com/major/MySQLTuner-perl/master/mysqltuner.pl && chmod +x /root/scripts/mysqltuner.pl
wget -q -O /root/scripts/tuning-primer.sh https://launchpad.net/mysql-tuning-primer/trunk/1.6-r1/+download/tuning-primer.sh && chmod +x /root/scripts/tuning-primer.sh

# Setup wp cli
echo 'Setting up WP CLI'
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# take a backup, after doing everything
echo 'Taking a final backup'
LT_DIRECTORY="/root/backups/etc-$(date +%F)-linux-tweaks-ubuntu1604-after"
if [ ! -d "$LT_DIRECTORY" ]; then
	cp -a /etc $LT_DIRECTORY
fi

