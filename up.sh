#!/bin/bash

up () {
  cd $1
  docker-compose up -d --build
  cd ../
}

up kibana
up elasticsearch
sleep 10s
up filebeat
up logstash