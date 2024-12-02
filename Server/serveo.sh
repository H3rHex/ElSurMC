#!/bin/bash

# Solicitar al usuario el puerto local para redirigir al puerto 25565 en localhost
read -p "Ingresa el puerto local que quieres redirigir: " puerto

# Verificar que el puerto es un número válido
if [[ ! "$puerto" =~ ^[0-9]+$ ]]; then
  echo "Por favor ingresa un número válido para el puerto."
  exit 1
fi

# Comando SSH con Serveo
ssh -R "$puerto":localhost:25565 serveo.net

