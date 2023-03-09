.PHONY: up fup down bbash fbash

up:
DOCKER_BUILDKIT=1 docker compose up -d

fup:
DOCKER_BUILDKIT=1 docker compose up --force-recreate --build -d

down:
docker compose down

bbash:
docker compose exec -ti back sh

bfront:
docker compose exec -ti front sh
