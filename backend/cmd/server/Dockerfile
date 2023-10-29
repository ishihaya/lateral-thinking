# syntax=docker/dockerfile:1
FROM ubuntu:22.04 AS builder

WORKDIR /work
COPY ./bin/server /work/
RUN cp server ./main

FROM gcr.io/distroless/base-debian11

WORKDIR /app
COPY --from=builder --chown=nonroot:nonroot /work/main /app/main

USER nonroot
EXPOSE 8080
ENTRYPOINT ["/app/main"]
CMD []