FROM ubuntu:xenial
WORKDIR /app
ADD . /app

RUN apt update
RUN apt install -y \
ntpdate \
libpgapack-mpi1 \
libopenmpi-dev \
libpgapack-serial1 curl \
libcurl4-openssl-dev

ENV NAME World
CMD ["/app/test.sh"]
