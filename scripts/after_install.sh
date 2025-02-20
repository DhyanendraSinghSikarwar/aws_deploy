#!/bin/bash

echo "------------------------------------ Starting After install script ------------------------------------ "

/bin/cp -r /tmp/deploy/* /home/ubuntu/flask-service/
cp /home/ubuntu/myenv/.env home/ubuntu/flask-service/

echo " ------------------------------------  All ok in After install script ------------------------------------"
