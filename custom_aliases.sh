### custom aliases by pothi @ tinywp.com

# Aliases for `ls`

# for mac, comment out the following line
alias ls='/bin/ls --color=auto --group-directories-first --classify'

alias l='ls'

# use the following if --color=auto did not work
# alias l='ls --color=always --group-directories-first --classify'
# if OS sets up colors and to get rid of colors, use --color=never

alias la='l --almost-all'
alias ld='l -ldh'
alias ll='l -lh' 

alias lal='l -lh --almost-all'
alias lla='lal'
alias llh='ll'

alias fm='free -m'
alias c='cd'
# alias ping='ping -c 1'

# Sed
alias sedf='/bin/sed --follow-symlinks'

### Curl aliases ###
### Ref - http://curl.haxx.se/docs/manpage.html
# alias curli='curl -I'
# alias curlih='curl -I -H "Accept-Encoding:gzip,deflate"'
alias curld='curl -I -H "Accept-Encoding:gzip,deflate"'
alias curlm='curl -I -H "Accept-Encoding:gzip,deflate" -A "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4"'

# Explanation for the above
# curli='curl --head' # strange character to replace --head
# curlih='curl -I --header "Accept-Encoding:gzip,deflate"'
# curld='curl -H "Accept-Encoding:gzip,deflate" --silent --dump-header - --output /dev/null'

# Dig aliases
alias digs='dig +short'

# Nginx
# alias to find the flag info
# modified from https://coderwall.com/p/gtgxww/intuitive-flags-information-of-nginx
alias ngx_flags='nginx -V 2>&1 | /bin/sed "s: --:\n\t&:g"'

# WP
# alias wp='/usr/local/bin/wp'

# PHP
alias findinphp="find * -type f -name '*.php' -print | xargs grep -inr"

### end of custom aliases by pothi ###
