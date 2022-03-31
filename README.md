# Spring RCE Proof of Concept

***This is only for research purposes and MUST NO be used for malicous purposes***

The purpose of this is to be able to research the Remote Code Execution vulnerabilty within the Spring framework. While the entire impact of this vulnerability is unknown at this stage, part of the purpose of this project is to help others be able to research and experiment with the vulnerability to test its impact and scope.

## Usage

1. Run the script `build.sh` to build the app and Docker image
2. Start the webapp by running the script `run-webapp.sh` (hit Ctrl + C to stop the webapp)
3. With the webapp running, run the srcipt `run-poc.sh` to run the exploit PoC
4. Also with the webapp running, you can run the script `run-poc-rest.sh` to run the exploit PoC against the REST interface

### build.sh

This script will build both the source code as well as Docker image. By default it will use the default `Dockerfile` to build the Docker image. You can specify a custom Dockerfile to use by providing the file name as an argument to the script. For example:

```
./build.sh Dockerfile-jetty
```

This will use the `Dockerfile-jetty` Docker file to build the webapp within a Jetty app server.


### run-poc.sh & run-poc-rest.sh

The scripts `run-poc.sh` and `run-poc-rest.sh` allow for a customer command to be passed as an argument:

```./run-poc.sh "<command-goes-here>"```

So for example:

```./run-poc.sh "cat /etc/passwd"```

## Credits
The following sources have been helpful in developing this:

* Rapid 7 blog - [Spring4Shell: Zero-Day Vulnerability in Spring Framework](https://www.rapid7.com/blog/post/2022/03/30/spring4shell-zero-day-vulnerability-in-spring-framework/) - helped with creating the PoC
* Spring - [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/) - helped to provide information for creating a MVC app from scratch
* Retrospected GitHub - [spring-rce-poc](https://github.com/Retrospected/spring-rce-poc) - helped provide an improved exploit script as well as Docker images