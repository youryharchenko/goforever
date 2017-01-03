#FROM iron/base
FROM ubuntu:16.04
WORKDIR /app
COPY goforever /app/
COPY goforever.toml /app/
COPY example/* /app/example/
#COPY example/logs /app/example/
ENTRYPOINT ["./goforever"]
EXPOSE 2224 8080 8081
