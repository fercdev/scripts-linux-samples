#!/bin/bash

ruta="/logs"
contador=0

## forma con error
for archivo in "$ruta/*.log"; do    
    contador=$((contador + 1))
done 

mkdir -p /logs

## forma correcta
for archivo in $ruta/*.log; do    
    contador=$((contador + 1))
done 

echo "cantidad de logs: $contador"

## path de "ruta" puede no estar definida
## la doble comilla puede ocasionar errores y no entrar en la iteracion

