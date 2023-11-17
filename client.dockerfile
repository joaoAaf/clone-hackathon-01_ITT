FROM ubuntu
WORKDIR /client
COPY script-client.sh ./
RUN chmod +x script-client.sh
RUN ./script-client.sh