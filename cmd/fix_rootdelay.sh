#!/bin/bash

# Script para agregar rootdelay en Armbian u Orange Pi OS
# Detecta automáticamente si debe modificar armbianEnv.txt u orangepiEnv.txt

set -e

DELAY_VALUE="10"

FILE_ARMBIAN="/boot/armbianEnv.txt"
FILE_ORANGEPI="/boot/orangepiEnv.txt"

if [ -f "$FILE_ARMBIAN" ]; then
    FILE="$FILE_ARMBIAN"
elif [ -f "$FILE_ORANGEPI" ]; then
    FILE="$FILE_ORANGEPI"
else
    echo "No se encontró armbianEnv.txt ni orangepiEnv.txt en /boot"
    exit 1
fi

echo "Usando archivo de configuración: $FILE"

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

echo "Configuración aplicada correctamente."
echo ""
echo "Si usas Armbian ejecuta:  sudo update-initramfs -u"
echo "Finalmente reinicia:     sudo reboot"
