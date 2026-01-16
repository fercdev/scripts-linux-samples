#!/bin/bash

# script para poder comprimir utilizando el comando zip
# permite detener el script en caso de un error
set -e

originBackupPath="/home/ubuntu/scripts"
destinationBackupPath="/home/ubuntu/backups"
fileName="backup_$(date +%Y%m%d_%H%M%S).zip"
file="$destinationBackupPath/$fileName"


# utilizando la sentencia case esac
# case expresion in
#   caso_1)
#     comandos
#   ;;
#   caso_2)
#     comandos
#   ;;
#   *)
#     comandos
#   ;;
# esac

validar_directorio() {
    # la ruta es el primer argumento
    local ruta="$1"

    if [ ! -d "$ruta" ]; then
        echo "Error: El directorio no existe: $ruta"
        exit 1
    fi
}

validar_permiso_directorio() {
    # la ruta es el primer argumento
    local ruta="$1"
    local permiso="$2"

    case "$permiso" in
      r)
        if [ ! -r "$ruta" ]; then
            echo "Error: No hay permisos de lectura en la ruta: $ruta"
            exit 1
        fi
        ;;
      w)
        if [ ! -w "$ruta" ]; then
            echo "Error: No hay permisos de escritura en la ruta: $ruta"
            exit 1
        fi
        ;;
      *)
        echo "Error: Permiso invalido. Solo se permite 'r' o 'w' "
        exit 1
        ;;
    esac
}

# validaciones
if ! command -v zip >/dev/null 2>&1; then
    echo "ERROR: El comando zip no existe o no esta instalado"
    exit 1
fi

# para origen
validar_directorio "$originBackupPath"
validar_permiso_directorio "$originBackupPath" "r"

# para destino
validar_directorio "$destinationBackupPath"
validar_permiso_directorio "$destinationBackupPath" "w"


zip -r "$file" "$originBackupPath"

echo "Archivo (ZIP): $file backup ha finalizado"