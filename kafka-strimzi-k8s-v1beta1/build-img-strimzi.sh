#! /usr/bin/env bash

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 021380080893.dkr.ecr.us-east-2.amazonaws.com

docker build -t igti-repository .

docker tag igti-repository:latest 021380080893.dkr.ecr.us-east-2.amazonaws.com/igti-repository:latest

docker push 021380080893.dkr.ecr.us-east-2.amazonaws.com/igti-repository:latest