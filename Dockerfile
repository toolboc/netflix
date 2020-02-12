# To run
# docker run --rm -p 3128:3128 -ti toolboc/notflix
# docker run -p 3128:3128 -d toolboc/notflix

FROM debian:jessie

# Install dependencies
RUN apt-get update -qq

# Install squid
RUN apt-get install -yqq apache2-utils
RUN apt-get install -yqq squid3

# Configure
RUN touch /etc/squid3/users
COPY squid.conf /etc/squid3/squid.conf
COPY run.sh /bin/proxy.sh

EXPOSE 3128
ENTRYPOINT ["/bin/proxy.sh"]
