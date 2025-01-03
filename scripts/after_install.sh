#!/bin/bash

echo "------------------------------------ Starting After install script ------------------------------------ "

/bin/cp -r /tmp/deploy/* /home/ubuntu/flask-service/

#aws s3 cp s3://xxxx/flask-service/.env /tmp

cp /tmp/.env  /home/ubuntu/flask-service/ 

rm -rf /tmp/.env


echo " ------------------------------------  All ok in After install script ------------------------------------"
