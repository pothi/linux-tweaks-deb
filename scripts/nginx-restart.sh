#!/usr/bin/env bash

# nginx restart script for certbot

# version 1.0
# date: 2021-04-22

# programming env: these switches turn some bugs into errors
set -o errexit -o pipefail -o noclobber -o nounset
# set -x

certbot_admin_email=${CERTBOT_ADMIN_EMAIL:-root@localhost}
ssl_utility=/root/scripts/ssl-cert-check
certbot_domain=$(basename "$RENEWED_LINEAGE")

# https://community.letsencrypt.org/t/environment-variables-available-in-etc-letsencrypt-renewal-hooks-scripts/102036

[ ! -d /root/scripts ] && mkdir /root/scripts
[ ! -f $ssl_utility ] && wget -O $ssl_utility https://github.com/Matty9191/ssl-cert-check/raw/master/ssl-cert-check

prev_expiry_date=$($ssl_utility -s $certbot_domain -b | awk '{print $3, $4, $5}')

/usr/sbin/nginx -t && /usr/bin/systemctl restart nginx

next_expiry_date=$($ssl_utility -s $certbot_domain -b | awk '{print $3, $4, $5}')

echo "Certificate for the domain '$certbot_domain' is renewed. \
    The old expiry date was '$prev_expiry_date' and the new expiry date is '$next_expiry_date'. \
    If you see a different expiry date, the renewal process went through successfully. \
    If not, check the logs." | /usr/bin/mail -s "Renewal of $certbot_domain" $certbot_admin_email

