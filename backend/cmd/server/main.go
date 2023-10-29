package main

import (
	"fmt"
	"net"
	"strconv"

	"github.com/ishihaya/lateral-thinking-backend/internal/handler/appv1"
	"github.com/ishihaya/lateral-thinking-backend/internal/repositoryimpl"
	"github.com/ishihaya/lateral-thinking-backend/usecase"
	"google.golang.org/grpc"
)

func main() {
	port := 8080
	lis, err := net.Listen("tcp", ":"+strconv.Itoa(port))
	if err != nil {
		panic(err)
	}
	s := grpc.NewServer()

	pr := repositoryimpl.NewPuzzleRepository()

	pu := usecase.NewPuzzleUsecase(pr)

	_, err = appv1.NewHandler(s, pu)
	if err != nil {
		panic(err)
	}

	fmt.Println("start server", port)

	if err := s.Serve(lis); err != nil {
		panic(err)
	}
}
