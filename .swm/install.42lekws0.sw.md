---
title: Install
---
&nbsp;

As the first step, you had to complete the following tasks:

- clone repository

- change folder

- list tags

- select tags 0.1

- install dependencies

- build executable

- run executable

The following code reproduces all the necessary steps to set up a running environment.

```bash
git clone https://github.com/stanzinofree/goFiberTemplate.git
cd goFiberTemplate
git fetch --all --tags
git checkout tags/0.1
go mod tidy
go build -o server ./cmd/main.go
./server
```

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBZ29GaWJlclRlbXBsYXRlJTNBJTNBc3Rhbnppbm9mcmVl" repo-name="goFiberTemplate"><sup>Powered by [Swimm](https://app.swimm.io/)</sup></SwmMeta>
