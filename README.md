forked from https://github.com/pylejowdmn/springboot-gradle-s2i

Spring Boot with Gradle build - RHEL Docker image...Updated with s2i extended/chained build
========================================================

This repository contains the s2i source for building a [Spring Boot 2](https://projects.spring.io/spring-boot/) application with [Gradle 4](https://gradle.org/) and then executing the resulting "fat" jar.  It sets a few environment variables that typical spring boot applications will make use of. 

The centos image is available on DockerHub
```
docker pull woodmenlife/springboot-gradle-s2i:latest
```

More info about chained builds can be found [here](https://github.com/openshift/source-to-image/blob/master/docs/runtime_image.md)

Important Environment Variables
-------------------------------

&#35; Used to set the port that the spring boot application will run on.

ENV SERVER_PORT 8080

&#35; Used to set the management port that things like actuator will be accessible through.

ENV MANAGEMENT_PORT 8081

Pushing to Docker Hub
-------------------------------
```
docker build . -t quay.io/gbengataylor/springboot-openjdk8-gradle-s2i

#$ docker build -t woodmenlife/springboot-gradle-s2i .
#$ docker push woodmenlife/springboot-gradle-s2i
```

Updating OpenShift image to Docker Hub latest
-------------------------------
```
oc import-image woodmenlife/springboot-gradle-s2i
```

Copyright
--------------------

Released under the Apache License 2.0. See the [LICENSE](LICENSE) file.
