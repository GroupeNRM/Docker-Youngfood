# Stack Docker Youngfood

## Contenu de la stack 
* PHP 7.3.16 FPM
* Serveur Nginx 1.17.9 Alpine
* MySQL 5.7
* Adminer
* Maildev
* Mercure

## Comment initialiser le projet
Utiliser la commande suivante pour cloner la stack Docker ainsi que le projet Youngfood Symfony

```git clone https://github.com/GroupeNRM/Docker-Youngfood.git --recurse-submodules```

## Modification des variables d'env
Afin de saisir un mot de passe personnalisé pour MySQL il est **nécessaire** de modifier le fichier
.env-exemple en y renseignant les champs. Ensuite il faut renommer ce fichier en .env

Sous linux : ```mv .env.dist .env```

## Initialisation de la stack Docker
Pour construire votre stack:
```docker-compose build```

Une fois toute cette procédure d'initialisation terminée :
```docker-compose up```

## Sous module Symfony
Il est très fortement possible que lorsque vous arrivez sur le projet Symfony, vous soyez dans un "HEAD detaché", afin de revenir
dans un état "attaché", il suffit de faire un ```git checkout "votre branche"```.

## Initialisation du projet Symfony
Il faut maintenant télécharger les vendor PHP en local en faisant un ```composer install```

Puis les dépendances (en local toujours) Yarn en faisant un ```yarn install```

## Connexion à la Base de Donnée
Afin de se connecter à la base de donnée, il est nécéssaire de renseigner le nom de serveur : "db"
Accesible au port 8080

## Maildev
Mail dev est un utilitaire permettant de catch les mails sortant de l'application. 
Accessible au port 1080.

## Make
La commande make permet d'enregistrer des commandes répétitives et de leurs assignés un nom.

Pour enregistrer une nouvelle commande il suffit d'ajouter une nouvelle entrée dans le fichier Makefile, ensuite pour éxecuter cette commande :
```make "nom de la commande"```.

## Commande utile:
Clear cache :
```docker-compose exec php php /var/www/symfony/bin/console cache:clear```

Accès au bash :
```docker-compose exec php bash```

Yarn watch pour compilation des assets :
```docker-compose exec php yarn watch```
