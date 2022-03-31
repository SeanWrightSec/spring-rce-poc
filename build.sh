#!/bin/bash

dockerfile=""

build() {
    mkdir -p deploy
    cd ./spring-rce-poc-code
    mvn clean install
    cp ./target/spring-rce-poc-0.0.1-SNAPSHOT.war ../deploy/spring-rce-poc.war
    cd ..

    docker image build -f $dockerfile -t spring-poc/poc-rce ./
}

clean() {
    rm -rf ./deploy
    cd ./spring-rce-poc-code
    mvn clean
    cd ..
}

case $1 in
    clean)
        clean
        ;;
    *)
        if [ $# -eq 0 ]
            then
                dockerfile="Dockerfile"
            else
                dockerfile=$1
        fi

        build
        ;;
esac

exit 0