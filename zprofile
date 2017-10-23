### custom exports by pothi @ customwp.com

# import global zshrc
if [ -f /etc/zsh/zshrc ]; then
    . /etc/zsh/zshrc
fi

# cursor position fix in history - http://www.mgoff.in/2012/05/09/zsh-command-history-cursor-at-the-end-of-the-line/
unsetopt global_rcs

### end of custom exports by pothi ###

[[ -f ~/.config/checks.sh ]] && source ~/.config/checks.sh
[[ -f ~/.config/common-exports.sh ]] && source ~/.config/common-exports.sh
[[ -f ~/.config/common-aliases.sh ]] && source ~/.config/common-aliases.sh
