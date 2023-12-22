dc := docker-compose
de := docker-compose exec

docker-up:
	$(dc) up -d
.PHONY: docker-up

docker-down:
	$(dc) down
.PHONY: docker-up

open:
	open "http://127.0.0.1:8080"
.PHONY: open

bash:
	# docker -w /var/www/html -it rl-php-container /bin/bash
	$(de) -w /var/www/html -it php-apache /bin/bash
.PHONY: bash
