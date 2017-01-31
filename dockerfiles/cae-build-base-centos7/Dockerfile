FROM centos:centos7

MAINTAINER Udi Finkelstein <github@udifink.com>
RUN cd /etc/yum.repos.d && \
  yum install -y wget deltarpm python-requests git make && \
  wget https://copr.fedorainfracloud.org/coprs/alonid/yum-plugin-copr/repo/epel-7/alonid-yum-plugin-copr-epel-7.repo && \
  yum update -y && \
  yum install -y yum-plugin-copr && \
  yum copr enable -y yselkowitz/cygwin && \
  yum install -y cygwin32-gcc cygwin32-zlib gcc glibc-devel glibc-devel.i686 zlib-devel.i686 libgcc.i686
