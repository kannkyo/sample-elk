#!/bin/bash

down () {
  cd $1
  docker-compose down
  cd ../
}

down filebeat
down elasticsearch
down kibana
