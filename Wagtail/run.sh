#!/bin/bash
#apt-get -y update
#apt-get install -y python-dev
#apt-get install -y libmariadbclient-dev-compat # important need for mysqlclient!!!
#python -m venv .venv
source .venv/bin/activate
#pip install --upgrade pip
#pip install wagtail
#pip install mysqlclient
#pip list
#wagtail start mysite
python mysite/manage.py makemigrations
python mysite/manage.py migrate
python mysite/manage.py collectstatic
python mysite/manage.py runserver 0.0.0.0:8000
deactivate