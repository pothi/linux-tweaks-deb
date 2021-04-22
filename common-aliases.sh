# https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/c1195.htm
# /(backslash) - The backslash escape character can be used before a shell command to override any aliases.

# ls
[[ $IS_MAC = 1 ]] && alias ls='ls -F -G'
[[ $IS_LINUX = 1 ]] && alias ls='ls --color=auto --group-directories-first --classify'

alias l='ls'
alias la='l -a'
alias ld='l -ldh'
alias ll='l -lh' 

alias lal='l -lh -a'
alias lla='lal'
alias llh='ll'

# curl
alias curl='printf "\n%s\n\n" "User-agent: Desktop"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0) Gecko/20100101 Firefox/54.0"'
alias curlm='printf "\n%s\n\n" "User-agent: Mobile"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4"'
alias curlt='printf "\n%s\n\n" "User-agent: Tablet"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (iPad; CPU iPad OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4"'
alias curll='\curl -L'

# Dig aliases
alias dig='\dig +short +noshort'

# PHP
alias findinphp="find ./ -type f -iname '*.php' -print0 | xargs -0 grep -inr"

# do not work: fuck!
# alias ngx_flags="nginx -V 2>&1 | sed 's: --:\'$'\n\t&:g'"
# alias echopath="echo $PATH | sed 's/:/\'$'\n/g'"

# grep
alias grep='\grep --color=auto'

alias pwgen='\pwgen -cnsyBv'
