#!/bin/bash
echo "------------------------------------  Running Application Start Script ------------------------------------ "

cd /home/ubuntu/flask-service

mkdir -p log/gunicorn

virtualenv --python=python3.11 venv

source venv/bin/activate

pip install -r requirements.txt

python3 app.py






echo "------------------------------------  Application Started ------------------------------------ "
