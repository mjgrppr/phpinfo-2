# FROM scratch --> código compilado de forma estática
# alpine --> Distribución ligera de Linux con las librerías básicas de éste
FROM alpine
# mkdir -p /app && cd /app   (estoy creando el directorio app en el contenedor)
WORKDIR /app
# copiamos código fuente de /src a /app (app dentro del contenedor, estoy copiando al contenedor)
COPY /src .
