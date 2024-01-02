.PHONY: build
build:
	go build -o server ./cmd/main.go

.PHONY: serve
serve:
	echo "Kill the server pressing CTRL+DEL"
    ./server

.PHONY: start
start:
	@build
	@serve

.PHONY: scan
scan:
	bearer scan .