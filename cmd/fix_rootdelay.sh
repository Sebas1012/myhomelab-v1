#!/bin/bash

# Script para corregir el tiempo de espera de arranque en Armbian
# Modifica /boot/orangepiEnv.txt para agregar rootdelay
# Uso: Ejecutar este script, ejecutar sudo update-initramfs -u y finalmente reiniciar el sistema

set -e

FILE="/boot/orangepiEnv.txt"
DELAY_VALUE="10"

echo "Verificando archivo $FILE ..."

if [ ! -f "$FILE" ]; then
    echo "No se encontró $FILE"
    exit 1
fi

sudo cp "$FILE" "${FILE}.bak"
echo "Copia de seguridad creada en ${FILE}.bak"

if grep -q '^extraargs=' "$FILE"; then
    echo "Ya existe extraargs, agregando rootdelay si no está presente..."
    if ! grep -q 'rootdelay=' "$FILE"; then
        sudo sed -i "s/^extraargs=\"*/&rootdelay=$DELAY_VALUE /" "$FILE"
        echo "rootdelay agregado."
    else
        echo "rootdelay ya está configurado."
    fi
else
    echo "Agregando línea extraargs con rootdelay=$DELAY_VALUE ..."
    echo "extraargs=\"rootdelay=$DELAY_VALUE\"" | sudo tee -a "$FILE" > /dev/null
    echo "Línea añadida correctamente."
fi

echo "Configuración aplicada correctamente"
echo "Reinicia el sistema con: sudo reboot"