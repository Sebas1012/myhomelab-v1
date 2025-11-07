#!/bin/bash

# Script para corregir el tiempo de espera de arranque en Armbian

set -e

FILE="/boot/armbianEnv.txt"
LINE="extraargs=rootdelay=10"

echo "Verificando archivo $FILE ..."

if [ ! -f "$FILE" ]; then
    echo "No se encontró $FILE"
    exit 1
fi

sudo cp "$FILE" "${FILE}.bak"
echo "Copia de seguridad creada en ${FILE}.bak"

if grep -q "^extraargs=" "$FILE"; then
    sudo sed -i "s/^extraargs=.*/$LINE/" "$FILE"
    echo "Línea 'extraargs' actualizada con rootdelay=10"
else
    echo "$LINE" | sudo tee -a "$FILE" >/dev/null
    echo "Línea 'extraargs' agregada al final del archivo"
fi

echo "Configuración aplicada correctamente"
echo "Reinicia el sistema con: sudo reboot"