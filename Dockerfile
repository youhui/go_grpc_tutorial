FROM scratch
WORKDIR $GOPATH/src/go_grpc_tutorial_src
COPY . $GOPATH/src/go_grpc_tutorial_src
EXPOSE 9090
CMD ["./main"]