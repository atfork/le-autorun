#!/bin/bash
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ACME_PATH="/home/example/.acme.sh/"
DOMAIN="example.com"
DOMAIN_SSL="example.com:443"
PURPLE='\033[1;35m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHT_GREEN='\033[1;32m'
LIGHT_BLUE='\033[1;34m'
LIGHT_GRAY='\033[0;37m'
NC='\033[0m'
echo "${YELLOW}**-_-_-_-_-_-_-_-_-_-_-_-_-_-_  ${NC}[ acme.sh script by @CryptoSeb ]  ${YELLOW}_-_-_-_-_-_-_-_-_-_-_-_-_-_-**${NC}"
echo " "
echo "${LIGHT_BLUE}Auto-renewing LetsEncrypt Certificate for ${LIGHT_GRAY}${DOMAIN} ${LIGHT_BLUE}using acme.sh${NC}"
"${ACME_PATH}"acme.sh --renew -d "${DOMAIN}" --force
"${ACME_PATH}"acme.sh --install-cert -d "${DOMAIN}" --fullchain-file /etc/nginx-acme.sh/fullchain.pem
"${ACME_PATH}"acme.sh --install-cert -d "${DOMAIN}" --cert-file /etc/nginx-acme.sh/cert.pem
"${ACME_PATH}"acme.sh --install-cert -d "${DOMAIN}" --key-file /etc/nginx-acme.sh/key.pem
echo " "
echo " "
echo "${YELLOW}**-_-_-_-_-_-_-_-_-_-_-_-_-_-_  ${NC}[ acme.sh script by @CryptoSeb ]  ${YELLOW}_-_-_-_-_-_-_-_-_-_-_-_-_-_-**${NC}"
echo " "
echo "${RED}*NOTICE* ${LIGHT_GRAY}YOU NEED TO MANUALLY RESTART NGINX FOR CHANGES TO TAKE EFFECT! ${RED}*NOTICE* ${NC}"
echo "${YELLOW}**-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-**${NC}"
