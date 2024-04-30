#!/bin/sh

set -e

envsubst < /etc/ngnix/default.con.tpl > /etc/ngnix/conf.d/default.conf
ngnix -g 'daemon off;'