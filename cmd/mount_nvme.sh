#!/bin/bash

# Script to mount NVMe drive on Armbian system
# Uso: Ejecutar sudo blkid para obtener el UUID del NVME (Se identifica porque empieza con una estructura similar a /dev/nvme0n1p1) y luego este script para montar el NVMe en /mnt/nvme

UUID_NVME="8354ef4a-1aa5-4696-b86b-9fd2b8703f9a"
MOUNT_POINT="/mnt/nvme"

if [ ! -d "$MOUNT_POINT" ]; then
    echo "Creando punto de montaje en $MOUNT_POINT..."
    sudo mkdir -p "$MOUNT_POINT"
fi

if mountpoint -q "$MOUNT_POINT"; then
    echo "El NVMe ya está montado en $MOUNT_POINT."
else
    echo "Montando NVMe..."
    sudo mount UUID=$UUID_NVME "$MOUNT_POINT"

    if [ $? -eq 0 ]; then
        echo "NVMe montado correctamente en $MOUNT_POINT."
    else
        echo "Error al montar el NVMe."
        exit 1
    fi
fi