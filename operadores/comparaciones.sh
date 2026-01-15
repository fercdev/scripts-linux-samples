#!/bin/bash

num=20
num2=19
num3=22

if [ $num -gt $num2 ] && [ $num -lt $num3 ]; then
    echo "$num es un numero que esta entre el 19 y el 22"
fi


textoaevaluar="mediodia"

if [ $textoaevaluar = "mediodia" ]; then
    echo "El texto $textoaevaluar coincide"
fi