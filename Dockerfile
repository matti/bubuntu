FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USER=app

RUN echo $USER
RUN apt-get update && apt-get install apt-utils -y
RUN apt-get upgrade -y

RUN apt-get install \
  build-essential \
  ssh rsync git-core \
  wget curl \
  htop \
  python python-crypto \
  -y

RUN apt-get install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev \
  ruby \
  -y

RUN apt-get install -y php-cli php-curl php-mcrypt php-xml php-bcmath
RUN phpenmod mcrypt

RUN adduser --disabled-password --gecos '' $USER
