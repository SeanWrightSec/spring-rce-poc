#!/bin/bash

build() {
    mkdir -p deploy
    cd ./spring-rce-poc-code
    mvn clean install
    cp ./target/spring-rce-poc-0.0.1-SNAPSHOT.war ../deploy/spring-rce-poc.war
    cd ..

    docker image build -t spring-poc/poc-rce ./
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
        build
        ;;
esac

exit 0