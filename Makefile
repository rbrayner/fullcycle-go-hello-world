.DEFAULT_GOAL := all

all: run show-size cleanup

run:
	@docker-compose up --build

show-size:
	@docker images

push:
	@docker push rbrayner/fullcycle-go-hello-world:latest

cleanup:
	@docker-compose down
	@docker image prune -a -f