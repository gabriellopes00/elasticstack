up:
	@docker-compose up --build -d

downv:
	@docker-compose down -v

down:
	@docker-compose down

start:
	@sh -c ./entrypoint.sh

.PHONY: up down downv start
