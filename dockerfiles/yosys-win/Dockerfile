FROM udif/cae-build-base
MAINTAINER Udi Finkelstein <github@udifink.com>

# RUN git clone https://github.com/udif/iverilog.git && cd iverilog && git checkout cross_compile && autoconf && ./configure --host=x86_64-w64-mingw32 && make && sudo make install

RUN git clone https://github.com/cliffordwolf/yosys.git && cd yosys && make config-mxe && \
  mkdir -p /usr/local/src/mxe/usr/bin && \
  ln -s /usr/bin/i686-w64-mingw32-gcc /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-gcc && \
  ln -s /usr/bin/i686-w64-mingw32-g++ /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-g++ && \
  ln -s /usr/bin/i686-w64-mingw32-pkg-config /usr/local/src/mxe/usr/bin/i686-w64-mingw32.static-pkg-config && \
  ln -s /usr/lib/mxe /usr/local/src/mxe && \
  make mxebin ABCCPP="" 2>&1 | tee yosys.log && \
  n=`git rev-parse HEAD | sed -e 's/\(.......\).*/\1/'` && \
  mkdir /zip && mv yosys*.zip /zip/yosys-win32-$n.zip
