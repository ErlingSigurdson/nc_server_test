#! /bin/bash

## Проверка прав root
if [ "$EUID" -ne 0 ]
    then echo "Please run this script again as root."
    exit
fi

sudo pkill -f -9 "(\/nc_server_test.sh$|\/nc_server_test.sh[[:space:]]|\/nc_server_test.js$|\/nc_server_test.js[[:space:]]|\/nc_server_test$|\/nc_server_test[[:space:]])"
nohup ./nc_server_test.sh > /dev/null 2>&1 &
