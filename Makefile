SHELL := /bin/bash
COMPOSE := docker compose

.PHONY: setup start stop logs update clean test

setup:
	./scripts/oneclick.sh

start:
	$(COMPOSE) up -d openclaw-gateway

stop:
	$(COMPOSE) down

logs:
	$(COMPOSE) logs -f --tail=200 openclaw-gateway

update:
	$(COMPOSE) pull
	$(COMPOSE) up -d --force-recreate openclaw-gateway

clean:
	$(COMPOSE) down -v --remove-orphans
	rm -rf .openclaw

test:
	./tests/test-docker-compose.sh
	./tests/test-config.sh
	./tests/test-connectivity.sh
