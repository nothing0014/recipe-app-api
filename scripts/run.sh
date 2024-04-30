#!/bin/sh

set -e

python manage.py wait_for_db
python manage.py collectstatic --noinput
python maanage.py migrate

uwsgi --socket :9000 --worksers 4 --master --enable-threads --moudle app.wsgi