#! /bin/bash

sudo pkill -f -9 "(\/nc_server_test.sh$|\/nc_server_test.sh[[:space:]]|\/nc_server_test.js$|\/nc_server_test.js[[:space:]]|\/nc_server_test$|\/nc_server_test[[:space:]])"
nohup ./nc_server_test.sh > /dev/null 2>&1 &
