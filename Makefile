NAME=conicle
VERSION=0.1.0

all: compose

compose:
	docker compose up -d --build

test-compose:
	./test.sh

.PHONY: all clean