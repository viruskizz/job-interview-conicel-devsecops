NAME=conicle
VERSION=0.1.0
NAMESPACE=dso-assignment

all: compose

# start:
prepare:
	@echo "Create persistent directories"
	@mkdir -p /data/postgres
	@chown -R 9999:999 /data/postgres
	@mkdir -p /data/pgadmin
	@chown -R 5050:5050 /data/pgadmin

log:
	@echo "View logs"
	@kubectl logs -n ${NAMESPACE} -l app=postgres --tail=100 -f --all-pods

compose:
	docker compose up -d --build

test-compose:
	./test.sh

.PHONY: all clean