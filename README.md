# Stack Docker MyCantineApp

## Contenu de la stack 
* PHP 7.4.1 FPM Alpine
* Serveur Nginx 1.17.9 Alpine
* MySQL 8
* Adminer
* ELK

## Comment initialiser le projet
Utiliser la commande suivante poru cloner la stack Docker ainsi que le projet MyCantine Symfony
```git clone https://github.com/GroupeNRM/Docker-MyCantine.git --recurse-submodules```

## Initialisation de la stack Docker
Pour construire votre stack:
```docker-compose build```

Une fois toute cette procédure d'initialisation terminée :
```docker-compose up```

## Commande utile:
Clear cache :
```docker-compose exec php php /usr/src/app/bin/console cache:clear```

## Axe d'amélioration: 
* Ajout de Make
* Possibilité de configurer manuellement les MDP de la DB
