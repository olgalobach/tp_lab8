FROM ubuntu:20.04


RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/

COPY . /usr/src/app/

RUN apt update
RUN apt-get -y install build-essential
RUN gcc  -o hello hello_world.cpp -lstdc++

CMD ./hello
