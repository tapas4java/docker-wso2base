docker-wso2base
===============
Docker base Image for WSO2 Products

The dockerfile will:

* Copy `Java 1.8 zip` to /otp from Packages directory.
* Unzip the Java 1.8 ZIP.
* Setup `JAVA_HOME` Env variable.
* Excecute `apt-get update`.

### Usage
* To pull: `docker pull anitech/wso2-base`
* To build: `docker build -t docker-wso2base github.com/tapas4java/docker-wso2base`
