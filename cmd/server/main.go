package main

import (
	"fmt"
	"os"

	"go_grpc_tutorial/pkg/cmd"
)


///./main -grpc-port=9090 -db-host=118.24.221.221:3306 -db-user=root -db-password=123456 -db-schema=POMELO
func main() {
	if err := cmd.RunServer(); err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		os.Exit(1)
	}
}
