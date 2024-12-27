#! /bin/bash

#--- netcat variant ---#

# Works better for web than nc.traditional, especially in a cycle, but browsers are sometimes rather slow to load the content anyway.
NC="ncat"

# Works poorly for web. Alas, it's older and not properly maintained, unlike ncat. -k option doesn't help much either.
#NC="nc.traditional"


#--- Port ---#

# For web
PORT=80

# For other shenanigans
#PORT=453


#--- Mode ---#

#MODE=SINGLE-SHOT
MODE=CONTINUOUS


#--- Implementation ---#

# Node.js
PROGRAM="/bin/nodejs /home/erling1/IT_playground/nc_server_test/nc_server_test.js"

# C language
#PROGRAM="/home/erling1/IT_playground/nc_server_test/nc_server_test"


#--- Execution ---#

echo -e "Starting nc_server_test, using $NC, mode $MODE\n"

### Single-shot
if [ "$MODE" = "SINGLE-SHOT" ]; then
    sudo $NC -l -p $PORT -c "$PROGRAM"
fi

### Continuous
if [ "$MODE" = "CONTINUOUS" ]; then
    while true; do
        sudo $NC -l -p $PORT -c "$PROGRAM"
    done &
fi
