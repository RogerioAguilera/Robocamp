#!/bin/bash

# Executa o docker-compose
docker-compose up -d

# Aguarda alguns segundos para que os serviços subam completamente
sleep 10

# Executa o comando do robot framework
robot -d logs tests
