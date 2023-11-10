ifeq ($(GOOS), windows)
EXT?=.exe
else
EXT?=
endif

build:
	go build -o ./dist/splunk-object-converter$(EXT) ./cmd/generator

build-linux-amd64: 
	GOOS=linux GOARCH=amd64 $(MAKE) build -j2

build-linux-arm64:
	GOOS=linux GOARCH=arm64 $(MAKE) build -j2

build-darwin-arm64:
	GOOS=darwin GOARCH=arm64 $(MAKE) build -j2

build-darwin-amd64:
	GOOS=darwin GOARCH=amd64 $(MAKE) build -j2

build-windows-amd64:
	GOOS=windows GOARCH=amd64 $(MAKE) build -j2

fmt:
	go fmt ./...

test:
	go test ./...