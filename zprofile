
### custom exports by pothi @ tinywp.com

# import global zshrc
if [ -f /etc/zsh/zshrc ]; then
    . /etc/zsh/zshrc
fi

# for grep to output with colors
# GREP_OPTIONS is deprecated as of Apr 2016 in Ubuntu 16.04
# export GREP_OPTIONS='--color=always'

# for visudo, svn and others
export EDITOR=vim
export VISUAL=vim

# cursor position fix in history - http://www.mgoff.in/2012/05/09/zsh-command-history-cursor-at-the-end-of-the-line/
# unsetopt global_rcs

### end of custom exports by pothi ###

