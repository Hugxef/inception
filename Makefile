all: install

install:
	mkdir -p ~/data/db
	mkdir -p ~/data/wp
	sudo docker-compose -f srcs/docker-compose.yml up --build

up:
	sudo docker-compose -f srcs/docker-compose.yml up

down:
	sudo docker-compose -f srcs/docker-compose.yml down

build:
	sudo docker-compose -f srcs/docker-compose.yml up --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml rm
	sudo rm -rf ~/data
	sudo docker volume rm v_wp
	sudo docker volume rm v_db
