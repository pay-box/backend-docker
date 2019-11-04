#!/bin/bash
mkdir /static
cd /code/pay
./manage.py migrate
./manage.py collectstatic --noinput
./manage.py compilemessages
service nginx start
if [ "$1" == "release" ]; then
    uwsgi --http :8100 --chdir /code/pay --wsgi-file /code/pay/pay/wsgi.py --master --processes 6 --threads 2
else
    ./manage.py runserver 0.0.0.0:8100
fi