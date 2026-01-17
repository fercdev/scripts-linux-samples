#!/bin/bash


## escenario de error
for archivo in $(ls /data); do
    echo "procesando: $archivo"
done 

## escenario correcto
for archivo in /data/*; do
    echo "procesando: $archivo"
done 

## contexto

## tenemos la ruta /data
## /data/archivo1.txt
## /data/archivo2.txt


#/data/*
#/data/*.txt
#/data/*.log