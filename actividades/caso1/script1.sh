#!/bin/bash

originPath="/etc/passwd"
outputfile="reporte_caso1.txt"
customTitle="Reporteria-$(date +%Y%m%d_%H%M%S)"

echo "---Titulo de ejercicio 1 - $customTitle----" > $outputfile
echo "------------------------------------------------------------------" >> $outputfile

# sort ordena siempre de la a -z  ||| pero si usamos sort -r z - a
awk -F: '{print $1}' $originPath | sort -r >> $outputfile

#cut
cut -d: -f1 $originPath | sort -r >> "$outputfile"