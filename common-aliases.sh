# older at top
alias sed='sed --follow-symlinks'

# ls
[[ $IS_MAC = 1 ]] && alias ls='ls -F -G'
[[ $IS_LINUX = 1 ]] && alias ls='ls --color=auto --group-directories-first --classify'

alias l='ls'
alias la='l --almost-all'
alias ld='l -ldh'
alias ll='l -lh' 

alias lal='l -lh --almost-all'
alias lla='lal'
alias llh='ll'

# curl
alias curld='curl -H "Accept-Encoding:gzip,deflate" -s -D- -o /dev/null -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0) Gecko/20100101 Firefox/54.0"'
alias curlm='curl -H "Accept-Encoding:gzip,deflate" -s -D- -o /dev/null -A "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4"'
alias curll='curl -L'

# Dig aliases
alias digs='dig +short'

# PHP
alias findinphp="find * -type f -name '*.php' -print | xargs grep -inr"

# do not work: fuck!
# alias ngx_flags="nginx -V 2>&1 | sed 's: --:\'$'\n\t&:g'"
# alias echopath="echo $PATH | sed 's/:/\'$'\n/g'"
