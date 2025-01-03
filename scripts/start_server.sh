#!/bin/bash
echo "------------------------------------  Running Application Start Script ------------------------------------ "

cd /home/ubuntu/flask-service

mkdir -p log/gunicorn

virtualenv --python=python3.11 venv

source venv/bin/activate

pip install -r requirements.txt
pip install gunicorn


sudo systemctl start flask_service.service

sleep 5

sudo systemctl status flask_service.service


echo "------------------------------------  Application Started ------------------------------------ "
