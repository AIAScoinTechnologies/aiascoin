FROM ubuntu:16.04

WORKDIR /aias
RUN apt-get update
RUN apt-get -y install build-essential libcurl4-gnutls-dev libxml2-dev \
    libssl-dev libdb-dev libdb++-dev autoconf automake libtool pkg-config \
    libboost-all-dev bsdmainutils libevent-dev

COPY ./aias130 .
RUN ./autogen.sh
RUN ./configure --with-incompatible-bdb
RUN make
RUN make install
RUN mkdir /root/.aias
COPY ./aias.conf /root/.aias/aias.conf
RUN chmod 600 /root/.aias/aias.conf
RUN cat /root/.aias/aias.conf
ENTRYPOINT [ "aiasd", "-rpcthreads=100", "-server"]  