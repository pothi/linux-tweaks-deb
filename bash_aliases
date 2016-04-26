# Prompt tweaks
export PS1="\[\e]0;\u@$(hostname -f | awk -F . '{print $2"."$3}'): \w\a\]${debian_chroot:+($debian_chroot)}\u@$(hostname -f | awk -F . '{print $2"."$3}'):\w\$ "

# WP-CLI directory
export PATH=$HOME/.wp-cli/bin:$PATH

# For RVM / WP-CLI, etc
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
