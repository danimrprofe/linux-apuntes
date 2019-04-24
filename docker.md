# Apuntes de Docker

- [Apuntes de Docker](#apuntes-de-docker)
  - [Docker](#docker)
  - [Dockerfiles](#dockerfiles)
    - [Formato de un dockerfile](#formato-de-un-dockerfile)
    - [Ejecutar un comando](#ejecutar-un-comando)
    - [Construir una imagen](#construir-una-imagen)
    - [Definir etiqueta para una imagen](#definir-etiqueta-para-una-imagen)
    - [Consultar imágenes](#consultar-im%C3%A1genes)
    - [Ejecutar un contenedor](#ejecutar-un-contenedor)
  - [Docker compose](#docker-compose)
    - [Ejecutar docker-compose](#ejecutar-docker-compose)
  - [Monitorizar contenedores](#monitorizar-contenedores)
  - [Buenas prácticas para construir contenedores](#buenas-pr%C3%A1cticas-para-construir-contenedores)

## Docker
Diferentes configuraciones de Docker

## Dockerfiles

Permiten automatizar la construcción de una imagen, a través de un fichero que contiene instrucciones para fabricar una imagen, a través de una serie de pasos.

### Formato de un dockerfile

Formato del Dockerfile, que se creará dentro de la carpeta donde tengamos el proyecto

```docker
FROM ubuntu:14.04
ENTRYPOINT ["/bin/echo"]
```

### Ejecutar un comando

Si en lugar de utilizar entrypoints queremos pasar parámetros, podemos utilizar CMD

```docker
CMD ["/bin/echo" , "Hi Docker !"]
```

### Construir una imagen

Construimos la imagen con el siguiente comando. Al haber un Dockerfile en la carpeta
la detecta y monta la imagen a partir de las instrucciones del Dockerfile.

```docker
docker build .
```

### Definir etiqueta para una imagen

Al no definir repositorios ni tags, se asigna a la imagen una ID hexadecimal. Podemos especificar un nombre y una etiqueta al vonstruir la imagen:

```docker
docker build -t cookbook:hello .
```

### Consultar imágenes

Consultar las imágenes disponibles en nuestra máquina. A partir de una imagen,
podemos levantar tantos contenedores como queramos.

```docker
docker images
```

### Ejecutar un contenedor

A partir de una imagen podemos crear y ejecutar un contenedor, especificando el ID de la imagen:

```docker
docker run e778362ca7cf
```

## Docker compose

Si quisiera levantar varios contenedores de diferentes imágenes, me vería obligado
a definir diferentes Dockerfiles para cada uno y levantar los contenedores uno a uno.

**Docker-compose** es una herramienta que nos permite: 

- Definir varios **servicios** en un solo archivo de configuración
- Con un solo comando podemos poner en marcha varios contenedores al mismo tiempo.
- Podemos decir que un servicio solo se levante si otro se ha iniciado previamente

Para ello definimos la configuración de los servicios mediante un archivo en formato YAML, que llamaremos docker-compose.

Ejemplo de docker-compose:

```yaml
version: '3.3'

services:
  basededatos:
    image: mysql:5.7
    volumes: 
      - db_data:/var/lib/mysql
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: somewordpress
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: wordpress

  wordpress:
    depends_on:
      - basededatos
    image: wordpress:latest
    ports:
       - "8000:80"
    restart: always
    environment:
      WORDPRESS_DB_HOST: basededatos:3306
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_NAME: wordpress
volumes:
db_data: {}
```

### Ejecutar docker-compose

Para ejecutar docker-compose:

```docker
docker-compose up
```

El inconveniente de hacerlo así es que la consola se verá bloqueada por la ejecución del proceso hasta que el contenedor finalice.

De todos modos, también podemos ejecutar los contenedores en segundo plano (detached), utilizando:

```docker
docker-compose up -d
```

Si queremos visualizar los contenedores que se están ejecutando:

```docker
docker ps
```

Eliminar todos los contenedores existentes (subshell):

```docker
docker stop $(docker ps -q)
docker rm -v $(docker ps -aq)
```

## Monitorizar contenedores

* Comprobar recursos que utiliza un contenedor: docker stats xxx
* Comprobar los logs de un contenedor: docker logs
* Comprobar todos los eventos que han ocurrido a un contenedor: docker events 
* Listar procesos de un contenedor: docker top xxx

## Buenas prácticas para construir contenedores

* Una sola aplicación por contenedor. Por ejemplo, PHP y Mysql en dos contenedores.
* Agregar el código fuente de la aplición lo más tarde posible. Las capas y dependencias se pueden cachear y acelerar las builds posteriores
* Eliminar todo lo que no sea necesario, o utilizar una imagen scratch o distroless.
* Hacer las imágenes lo más pequeñas posibles. Reduce downtimes, tiempo de arranque y espacio en disco.
* Etiquetar las imágenes
* Utiliza volúmenes para manejar guardar la configuración y los datos fuera de los contenedores