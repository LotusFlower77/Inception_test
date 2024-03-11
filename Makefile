all: up

build:
	docker compose -f ./srcs/docker-compose.yml build

clean:
	docker system prune -af

down:
	docker compose -f ./srcs/docker-compose.yml down

up:
	docker compose -f ./srcs/docker-compose.yml up -d
