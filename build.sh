#!/usr/bin/env bash
pip freeze > requirements.txt
pip install Django
pip install dj-database-url
pip install python-dotenv
pip install django-cors-headers
pip install psycopg2 -U
pip install gunicorn
python3 -m pip install Pillow
export DJANGO_SETTINGS_MODULE=ecommerce.settings
python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt
export DJANGO_SETTINGS_MODULE=ecommerce.settings
python3 manage.py collectstatic --no-input
python3 manage.py makemigrations

python3 manage.py makemigrations store
python3 manage.py migrate
python manage.py createsuperuser --noinput

