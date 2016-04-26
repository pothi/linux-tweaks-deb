Linux-Tweaks
============

Ubuntu 14.04 is undoubtedly one of the popular server distribution around this time (2015). It may not be the case after few years down the road, though. Until then, let's tweak it to some extend to make it more useable!

Tweaks on bash, zsh, vim, tmux, AWScli etc

## Install procedure

```bash
# as root

mkdir ~/scripts
curl -Sso ~/scripts/bootstrap_ltu.sh https://raw.githubusercontent.com/pothi/linux-tweaks-ubuntu-14-04/master/scripts/bootstrap_ltu.sh
chmod +x ~/scripts/bootstrap_ltu.sh

# go through the script to understand what it does. you are warned!
# vi ~/scripts/bootstrap_ltu.sh

# run it and face the consequences
~/scripts/bootstrap_ltu.sh

# (optional) get rid of all the evidences of making the changes
# rm ~/scripts/bootstrap_ltu.sh

```
