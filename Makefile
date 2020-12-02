SHELL := /bin/bash

menu:
	@perl -ne 'printf("%10s: %s\n","$$1","$$2") if m{^([\w+-]+):[^#]+#\s(.+)$$}' Makefile

build: # Build defn/pihole
	docker build -t defn/pihole .

push: # Push defn/pihole
	docker push defn/pihole

bash: # Run bash shell with defn/pihole
	docker run --rm -ti --entrypoint bash defn/pihole

clean:
	docker-compose down --remove-orphans

up:
	docker-compose up -d --remove-orphans
	bash -x TODO

down:
	docker-compose rm -f -s

recreate:
	$(MAKE) clean
	$(MAKE) up

logs:
	docker-compose logs -f
