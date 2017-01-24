FROM debian:jessie
MAINTAINER Udi Finkelstein <github@udifink.com>
RUN \
  echo "deb http://pkg.mxe.cc/repos/apt/debian jessie main" > /etc/apt/sources.list.d/mxeapt.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D43A795B73B16ABE9643FE1AFD8FFF16DB45C6AB && \
  apt-get update -y && \
# apt-get install software-properties-common python-software-properties -y && \
# add-apt-repository universe && \
# add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
# apt-get update -y && \
  apt-get install -y \
  autoconf \
  bison \
#  chrpath \
  cmake \
#  curl \
#  dialog \
#  dos2unix \
  flex \
  g++ \
  g++-mingw-w64-i686 \
  g++-mingw-w64-x86-64 \
  gawk \
  gcc-mingw-w64-i686 \
  gcc-mingw-w64-x86-64 \
  gettext \
  git \
  gperf \
#  graphviz \
  libffi-dev \
  libreadline-dev \
  make \
  mercurial \
  mingw-w64-tools \
# mxe-i686-w64-mingw32.static-gcc \
  pkg-config \
  python3 \
#  python-dev \
   subversion \
   tcl-dev \
#  wget \
  xdot \
  xz-utils \
  zip

