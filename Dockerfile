FROM docker:18.09.1 AS docker
FROM docker/compose:1.23.2
RUN apk --no-cache add make git bash curl 
COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker
COPY bashrc /root/.bashrc
ENTRYPOINT []
