# FROM scratch --> código compilado de forma estática
# alpine --> Distribución ligera de Linux con las librerías básicas de éste
FROM alpine
# mkdir -p /app && cd /app   (estoy creando el directorio app en el contenedor)
WORKDIR /app
# copiamos código fuente de /src a /app (app dentro del contenedor, estoy copiando al contenedor)
COPY /src .
# instalo paquete php (apk es el alpine package keeper)
RUN apk add php
#ejecuto index.php en php --> php index.php
#la ruta de php la conozco ejecutando: dockercker run --rm test which php 
ENTRYPOINT /usr/bin/php
# argumentos del entry point 
CMD -f index.php -S 0.0.0.0:8080
