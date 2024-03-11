all:
	docker compose -f ./srcs/docker-compose.yml up -d

build:
	docker compose -f ./srcs/docker-compose.yml build

clean:
	docker compose -f ./srcs/docker-compose.yml down
