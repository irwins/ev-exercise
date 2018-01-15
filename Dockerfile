FROM ubuntu:12.04
RUN apt-get update -qq \
&& apt-get install -y wget
RUN mkdir /tmp/evision \
&& cd /tmp \
&& wget --no-check-certificate https://raw.githubusercontent.com/irwins/ev-exercise/v1.0.1/src/eVision-product-ops.linux.1.0.1.tar.gz \
&& tar xvzf eVision-product-ops.linux.1.0.1.tar.gz

EXPOSE 8080

CMD ["/tmp/evision-product-ops"]