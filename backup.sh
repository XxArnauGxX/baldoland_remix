#!/bin/bash

# Carpeta destino de backups
BACKUP_DIR="backups"
# Nombre del archivo backup (fecha y hora)
BACKUP_NAME="backup_$(date +'%Y%m%d_%H%M').tar.gz"

# Qué incluir en el backup (mundo, nether, end, plugins y configs)
tar -czvf "$BACKUP_DIR/$BACKUP_NAME" world world_nether world_the_end plugins server.properties bukkit.yml spigot.yml paper.yml

echo "Backup realizado en $BACKUP_DIR/$BACKUP_NAME"
