FROM ubuntu:latest
RUN apt-get update -qq \
&& apt-get install -y wget
RUN cd /tmp \
&& wget https://github.com/irwins/ev-exercise/blob/master/src/eVision-product-ops.linux.1.0.0.tar.gz \
&& tar xvzf eVision-product-ops.linux.1.0.0.tar.gz

EXPOSE 8080

CMD ["/tmp/evision-product-ops"]