#!/usr/bin/env bash


python3 -m venv venv
source venv/bin/activate
pip freeze > requirements.txt
pip install -r requirements.txt

python3 manage.py collectstatic --no-input
python3 manage.py makemigrations

python3 manage.py makemigrations store
python3 manage.py migrate
python3 manage.py collectstatic --no-input
python3 manage.py createsuperuser --no-input