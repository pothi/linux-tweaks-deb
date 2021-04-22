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
alias curl='printf "\n%s\n\n" "User-agent: Desktop"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:88.0) Gecko/20100101 Firefox/88.0"'
alias curlm='printf "\n%s\n\n" "User-agent: Mobile"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (iPhone; CPU iPhone OS 13_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.1 Mobile/15E148 Safari/604.1"'
alias curlt='printf "\n%s\n\n" "User-agent: Tablet"; \curl -H "Accept-Encoding:gzip,deflate,br" -s -D- -o /dev/null -A "Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1"'
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
