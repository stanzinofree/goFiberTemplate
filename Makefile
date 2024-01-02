build:
	@echo "Building Server APP"
	go build -o server ./cmd/main.go
	@echo "Ending Building Server APP"

start:
	@ "Starting Server, use CTRL+DEL to kill it"
	./server


run:
	@build
	@start

scan:
	@echo "Starting Scanning the APP"
	bearer scan .


.PHONY: build run start scan