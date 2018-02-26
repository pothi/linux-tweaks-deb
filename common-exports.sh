# for grep to output with colors
# export GREP_OPTIONS='--color=auto'

# for visudo, svn and others
export EDITOR=vi
export VISUAL=vi

# Fix locale settings
# export LANGUAGE="en_US"
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

export GEM_HOME=~/.gem

# for history control - bash specific
export HISTCONTROL=$HISTCONTROL:erasedups:ignorespace

#-------------------------- PATH ------------------------#

# dnsmasq
# export LOC_BIN_PATH=/usr/local/bin
export LOC_SBIN_PATH=/usr/local/sbin

# PHP composer
export COMPOSER_PATH=~/.composer/vendor/bin

# user bin and scripts
export USER_PATH=~/bin:~/scripts

# GEM
export GEM_PATH=~/.gem/bin

# python libraries installed as python install xyz --user
export PYTHON_USER_PATH=~/Library/Python/2.7/bin
# mac ports
export MAC_PORTS_PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin

# npm
export NPM_PATH=~/.npm-global/bin
# yarn
export PREFIX=~/.config/yarn/bin

export PATH=$PREFIX:$NPM_PATH:$PYTHON_USER_PATH:$GEM_PATH:$USER_PATH:$COMPOSER_PATH:$LOC_SBIN_PATH:$PATH
[[ $IS_MAC = 1 ]] && export PATH=$MAC_PORTS_PATH:$PATH
