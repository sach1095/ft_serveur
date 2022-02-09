Ce projet nous fait decouvrir les base de docker

Dans ce projet il est nous etait demander de crée un dokcer avec les service suivant :

- PhpMyAdmin
- Wordpress
- Mariadb

Ce projet a ete tres utile pour comprendre le fonctionement de docker et des service qui nous ont ete demander.

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

les commande et note qui m'ont ete utilie pour se projet sont afficher ci-dessous.

# ft_serveur

http://127.0.0.1
http://127.0.0.1/phpMyAdmin/
http://127.0.0.1/wordpress/

docker run
docker run -p 80:80 nginx // -p pour définir l'utilisation de ports
docker stop ID_RETOURNÉ_LORS_DU_DOCKER_RUN si cree avec --detach
docker rm ID_RETOURNÉ_LORS_DU_DOCKER_RUN
docker ps
docker images -a
la commande pour faire le ménage : docker system prune

docker build -t <NOM que je veux> .
docker run -p 80:80 -p 443:443 -it <NOM que je veux> bash
service nginx start

FROM qui vous permet de définir l'image source ;

RUN qui vous permet d’exécuter des commandes dans votre conteneur ;

ADD qui vous permet d'ajouter des fichiers dans votre conteneur ;

WORKDIR qui vous permet de définir votre répertoire de travail ;

EXPOSE qui permet de définir les ports d'écoute par défaut ;

VOLUME qui permet de définir les volumes utilisables ;

CMD qui permet de définir la commande par défaut lors de l’exécution de vos conteneurs Docker.
