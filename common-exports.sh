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
export GEM_PATH=$GEM_HOME/bin

# for history control - bash specific
export HISTCONTROL=$HISTCONTROL:erasedups:ignorespace

# Go WorkSpace
export GOPATH=$HOME/.local/go-ws

#-------------------------- PATH ------------------------#

[ -d $GEM_PATH ] && PATH=$GEM_PATH:$PATH

# export LOC_BIN_PATH=/usr/local/bin
# export LOC_SBIN_PATH=/usr/local/sbin

# set PATH so it includes user's GO lang workspace bin if it exists
[ -d "$(go env GOPATH)/bin" ] && PATH="$(go env GOPATH)/bin:$PATH"

# PHP composer
# export COMPOSER_PATH=~/.composer/vendor/bin
[ -d "$HOME/.composer/vendor/bin" ] && PATH="$HOME/.composer/vendor/bin:$PATH"

# user bin and scripts
# export USER_PATH=~/bin:~/scripts

# python libraries installed as python install xyz --user
# export PYTHON_USER_PATH=~/Library/Python/2.7/bin
# mac ports
# export MAC_PORTS_PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin

# npm
# export CUSTOM_NPM_PATH=~/.npm-global/bin
# yarn
# export PREFIX=~/.config/yarn

# export PATH=~/.local/bin:$CUSTOM_NPM_PATH:$PYTHON_USER_PATH:$GEM_PATH:$USER_PATH:$COMPOSER_PATH:$LOC_SBIN_PATH:$PATH
# [[ $IS_MAC = 1 ]] && export PATH=$MAC_PORTS_PATH:$PATH
