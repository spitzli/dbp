#!/bin/sh

git pull;
sudo docker build --no-cache -t dbp .;
sudo docker tag dbp localhost:5000/dbp;
sudo docker push localhost:5000/dbp;
sudo docker pull localhost:5000/dbp;