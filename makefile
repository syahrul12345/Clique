down:
	docker-compose down
build:
	docker-compose -f docker-compose.dashboard.yaml -f docker-compose.node.yaml -f docker-compose.yaml build
bootstrap:
	docker-compose up --force-recreate --build bootstrap-node  
up:
	docker-compose -f docker-compose.dashboard.yaml -f docker-compose.node.yaml -f docker-compose.yaml up
all: down build up