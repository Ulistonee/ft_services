#!/bin/bash

  if [[ $# == 1 ]];  then
    if [[ $1 == "on" ]];  then
      sed -i -e "18 s/autoindex off;/autoindex on;/g" /etc/nginx/sites-available/my_config
      echo "autoindex is on..."
    elif [[ $1 == "off" ]];  then
      sed -i -e "18 s/autoindex on;/autoindex off;/g" /etc/nginx/sites-available/my_config
      echo "autoindex is off..."
    fi
  fi

  service nginx reload
