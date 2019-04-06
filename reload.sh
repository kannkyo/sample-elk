#!/bin/bash

down () {
  cd $1
  docker-compose down
  cd ../
}

up () {
  cd $1
  docker-compose up -d --build
  cd ../
}

reload () {
  down $1
  up $1
}

down filebeat
down elasticsearch
down kibana

up kibana
up elasticsearch
sleep 10s
up filebeat

