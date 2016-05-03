FROM scratch
MAINTAINER silverwind

COPY registry /registry
COPY config.yml /config.yml

VOLUME ["/data"]
EXPOSE 5000

ENTRYPOINT ["/registry"]
CMD ["serve", "/config.yml"]
