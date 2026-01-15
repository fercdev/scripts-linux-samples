#!/bin/bash
num=1
until [ $num -gt 3 ]; do
    echo "Valor: $num"
    ((num++))
done
