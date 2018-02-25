FROM golang:1.10

RUN apt-get update && \
    apt-get install -y autoconf automake libtool curl make g++ unzip git

RUN useradd -ms /bin/bash app

WORKDIR /home/app

RUN git clone https://github.com/google/protobuf

WORKDIR /home/app/protobuf

RUN ./autogen.sh && \
    ./configure && \
		make && \
		make check && \
		make install && \
		make install && \
		ldconfig

WORKDIR /home/app

RUN go get -u github.com/golang/protobuf/protoc-gen-go

CMD ["protoc"]

