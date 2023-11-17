#!/bin/bash
# Carrega o arquivo .env
source .env
# Clona o repositório para a pasta api
git clone $URL_REPO api
# Faz login no docker hub
echo $TOKEN_DOCKER | docker login --username $LOGIN_DOCKER --password-stdin
# Realiza build da imagem da api
docker build -t $IMAGE_NAME -f ./api.dockerfile .
# Manda a imagem da api para o docker hub
docker push $IMAGE_NAME
# Faz logout no docker hub
docker logout
# Sobe os containers
docker compose up -d