executable = server

.PHONY: build
build:
	@echo "Building Server APP"
	go build -o ${executable} ./cmd/main.go
	@echo "Ending Building Server APP"

.PHONY: start
start:
	@echo "Starting Server"
	./${executable} &
	@echo "Server Started"

.PHONY: stop
stop:
	@echo "Stopping Server"
	@-pkill -SIGTERM -f "./${executable}"
	@echo "Server Stopped"

.PHONY: clean
clean:
	@echo "Removing last build of server"
	if [ "${executable}" ]; then rm -f ${executable}; fi
	@echo "Server removed"

.PHONY: run
run: stop clean build start

.PHONY: scan
scan:
	@echo "Starting Scanning the APP"
	bearer scan .


