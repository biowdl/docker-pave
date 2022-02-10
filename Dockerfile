FROM alpine:3.13.0

COPY pave .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/pave-v1.0/pave.jar && \
    mkdir /usr/local/share/pave/ && \
    chmod 777 pave && \
    mv pave.jar /usr/local/share/pave/ && \
    mv pave /usr/local/share/pave/ && \
    ln -s /usr/local/share/pave/pave /usr/local/bin/pave
