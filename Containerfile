FROM rust:1.66 as builder

RUN apt-get update && apt-get upgrade -y && apt-get install -y protobuf-compiler libprotobuf-dev

WORKDIR /usr/src/app
COPY . .
RUN cargo build --bin helloworld-server --release

# FROM debian:buster-slim
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.3
COPY --from=builder /usr/src/app/target/release/helloworld-server ./app/helloworld-server

EXPOSE 9000

CMD ["/app/helloworld-server"]