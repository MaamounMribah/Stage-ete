#!/usr/bin/env bash

set -o errexit  # exit on error
python3 -m venv dev-env && source venv/bin/activate
pip install -r requirements.txt

python3 manage.py collectstatic --no-input
python3 manage.py makemigrations
python3 manage.py migrate