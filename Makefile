.PHONY: start
start:
	echo "Kill the server pressing CTRL+DEL"
	./server

.PHONY: macbuild
macbuild:
	CGO_ENABLED=0 GOOS=darwin go build -o server ./cmd/main.go

.PHONY: linuxbuild
linuxbuild:
	CGO_ENABLED=0 GOOS=linux go build -o server ./cmd/main.go

.PHONY: scan
scan:
	bearer scan .