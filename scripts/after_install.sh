#!/bin/bash

echo "------------------------------------ Starting After install script ------------------------------------ "

/bin/cp -r /tmp/deploy/* /home/ubuntu/flask-service/
cp myenv/.env flask-service/

echo " ------------------------------------  All ok in After install script ------------------------------------"
