# ft_serveur

http://127.0.0.1

docker run
docker run -p 80:80 nginx // -p pour définir l'utilisation de ports
docker stop ID_RETOURNÉ_LORS_DU_DOCKER_RUN si cree avec --detach
docker rm ID_RETOURNÉ_LORS_DU_DOCKER_RUN
docker ps
docker images -a
la commande pour faire le ménage : docker system prune

docker build -t <NOM que je veux> .
docker run -p 80:80 -it <NOM que je veux> bash
service nginx start

FROM qui vous permet de définir l'image source ;

RUN qui vous permet d’exécuter des commandes dans votre conteneur ;

ADD qui vous permet d'ajouter des fichiers dans votre conteneur ;

WORKDIR qui vous permet de définir votre répertoire de travail ;

EXPOSE qui permet de définir les ports d'écoute par défaut ;

VOLUME qui permet de définir les volumes utilisables ;

CMD qui permet de définir la commande par défaut lors de l’exécution de vos conteneurs Docker.
