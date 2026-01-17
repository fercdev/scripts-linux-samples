#!/bin/bash

if [ $ENV == "prod" ]; then
    echo "entorno de produccion"
else
    echo "otro entorno"
fi

## debemos de asegurarnos que las variables que sean evaluadas
## primero pasen por verificacion de su existencia
