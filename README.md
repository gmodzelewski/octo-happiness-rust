# Rusty Hello World GRPC

Example from
https://github.com/hyperium/tonic/blob/master/examples/helloworld-tutorial.md


## Run the server

`cargo run --bin helloworld-server`

## Run the client

`cargo run --bin helloworld-client`

... or call via _grpcurl_:

`grpcurl -plaintext -import-path ./proto -proto helloworld.proto -d '{"name": "RustyClient"}' '[::]:9000' helloworld.Greeter/SayHello`