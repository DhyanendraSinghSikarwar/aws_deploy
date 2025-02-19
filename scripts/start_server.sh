#!/bin/bash
echo "------------------------------------  Running Application Start Script ------------------------------------ "

cd /home/ubuntu/flask-service

mkdir -p log/gunicorn

virtualenv --python=python3.11 venv

source venv/bin/activate

pip install -r requirements.txt
pip install gunicorn


sudo systemctl start flask-service.service

sleep 5

sudo systemctl status flask-service.service


echo "------------------------------------  Application Started ------------------------------------ "
