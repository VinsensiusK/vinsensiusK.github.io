FROM debian:11-slim

RUN apt-get update && apt-get install -y wget openjdk-11-jre
RUN wget -c https://portswigger-cdn.net/burp/releases/download?product=generic_ci_driver -O /opt/burp.jar


COPY scan.sh /opt/
RUN chmod +x /opt/scan.sh