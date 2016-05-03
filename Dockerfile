FROM scratch
MAINTAINER silverwind

COPY registry /bin/registry
COPY config.yml /config.yml

VOLUME ["/var/lib/registry"]
EXPOSE 5000

ENTRYPOINT ["/bin/registry"]
CMD ["serve", "/config.yml"]
