# ICVAD - Rendu Examen
## CODEBECQ Florian

### Description
Ce projet vise à déployer une application composée d'un cluster RabbitMQ, d'une base de données PostgreSQL et d'un serveur, le tout géré par Kubernetes.

(Les fichiers .yaml créés sont dans le dossier rendu)

#### 1. Création du namespace
```sh
    kubectl create namespace florian-codebecq
```

#### 2. Déployer le RabbitMQ sur le cluster

1. Création du fichier `rabbitmq_cluster.yaml`

2. Déployer sur le cluster
```sh
    kubectl create -f rendu/rabbitmq_cluster.yaml
```


#### 3. Déployer la base Postgres

1. Build
```sh
    docker build -t florianc04/counter-database database
    docker push florianc04/counter-database:latest
```

4. Déployer pour lancer le pod de la base de données
```sh
    kubectl create -f rendu/database_deployment.yaml
```

#### 4. Déployer le serveur

1. Création d'un Dockerfile pour le serveur dans le dossier `backend`

2. Build
```sh
    docker build -t florianc04/counter-server backend
    docker push florianc04/counter-server:latest
```

3. Création d'un fichier `server_deployment.yaml`

4. Déployer pour lancer le pod du serveur
```sh
    kubectl create -f rendu/server_deployment.yaml
```

5. Création d'un fichier `autoscaler_deployment.yaml`

6. Déployer pour lancer le pod de l'autoscaler
```sh
    kubectl create -f rendu/autoscaler_deployment.yaml
```
