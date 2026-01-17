#!/bin/bash

# /usr/bin/node 

# resultado=$(/usr/bin/node app.js) -- con la ruta absoluta

# validar que esta instalado "node"

# /var/www/app1/app.js --> valido la existencia del archivo

resultado=$(node app.js)

echo "Resultado: $resultado" 
