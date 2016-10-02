FROM scratch
MAINTAINER silverwind

COPY registry /registry
COPY config.yml /config/config.yml

VOLUME ["/data", "/config"]
EXPOSE 5000

ENTRYPOINT ["/registry"]
CMD ["serve", "/config/config.yml"]
