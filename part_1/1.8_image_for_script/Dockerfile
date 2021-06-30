FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh && apt-get update && (echo "Y" | apt-get install curl)

CMD ./script.sh