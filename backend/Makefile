.PHONY: lint
lint:
	buf lint ./proto

.PHONY: codegen
codegen:
	go generate ./...

.PHONY: format
format:
	buf format -w ./proto

.PHONY: run
run:
	go run ./cmd/server/main.go

.PHONY: display-api-local
display-api-local:
	grpcui -plaintext localhost:8080

.PHONY: display-api-dev
display-api-dev:
	grpcui app-api-sltp2vtr4a-an.a.run.app:443

.PHONY: build
build:
	GOOS=linux GOARCH=amd64 go build -o ./bin/server ./cmd/server/main.go
	GOOS=darwin GOARCH=arm64 go build -o ./bin/server-arm64 ./cmd/server/main.go
