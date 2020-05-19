clean:
	docker-compose exec php php /var/www/symfony/bin/console cache:clear

dsu:
	docker-compose exec php php /var/www/symfony/bin/console d:s:u --force
	
entity:
	docker-compose exec php php /var/www/symfony/bin/console make:entity