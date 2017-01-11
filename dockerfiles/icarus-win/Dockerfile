FROM udif/cae-build-base
MAINTAINER Udi Finkelstein <github@udifink.com>

RUN git clone https://github.com/udif/iverilog.git && \
  cd iverilog && git checkout cross_compile && \
  autoconf && ./configure --host=i686-w64-mingw32 2>&1 | tee configure.log && make DESTDIR=/inst 2>&1 | tee iverilog.log && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  make install DESTDIR=/win32 2>&1 | tee install.log && \
  mkdir /zip && zip -r /zip/iverilog-win32-$n.zip /win32/*
