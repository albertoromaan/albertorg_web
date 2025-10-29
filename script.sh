#!/bin/bash
set -e

echo "Subiendo contenido del repositorio principal"
cd ~/github/alberto_web/albertorg/
echo "Añadiendo nuevos ficheros..."
git add .
echo "Guardando cambios..."
read -p "Indica el nombre del commit para pagina_est-tica: " COMMIT1
git commit -m "$COMMIT1" || echo "No hay cambios para commitear."
echo "Subiendo a GitHub..."
git push origin master

echo "Subiendo contenido de la carpeta 'public'"
cd public/
echo "Añadiendo nuevos ficheros..."
git add .
echo "Guardando cambios..."
read -p "Indica el nombre del commit para pagina_estatica_public: " COMMIT2
git commit -m "$COMMIT2" || echo "No hay cambios para commitear en public."
echo "Subiendo a GitHub..."
git push origin master

echo "Proceso completado correctamente."
