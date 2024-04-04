.PHONY: up fup down fdown bbash fbash ci

up:
	DOCKER_BUILDKIT=1 docker compose up -d;

fup:
	DOCKER_BUILDKIT=1 docker compose up --force-recreate --build -d;

down:
	docker compose down;

fdown:
	docker compose down -v --remove-orphans

bbash:
	docker compose exec -ti back sh;

bfront:
	docker compose exec -ti front sh;

.PHONY: ci

ci : blint flint

blint:
	cd app/back; yarn lint;


flint:
	cd app/front; yarn lint;