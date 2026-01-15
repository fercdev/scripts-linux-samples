#!/bin/bash

mostrar_argumentos() {
    nombre=fernando

    echo "Numero de argumentos: $#"
    
    echo "Todos los argumentos: $@"

    echo "Primer argumento: $1"
    
    echo "Segundo argumento: $2"

    echo "Tercer argumento: $3"
}


mostrar_argumentos primero segundo

mostrar_argumentos 10 25 30