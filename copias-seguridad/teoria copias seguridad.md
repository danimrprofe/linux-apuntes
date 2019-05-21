# PRÁCTICA COBIAN BACKUP

- [PRÁCTICA COBIAN BACKUP](#pr%C3%A1ctica-cobian-backup)
  - [EJERCICIO 1](#ejercicio-1)
  - [EJERCICIO 2](#ejercicio-2)
  - [EJERCICIO 3](#ejercicio-3)
  - [EJERCICIO 4](#ejercicio-4)


Se ha diseñado la creación de una serie de backups sobre la carpeta Documentos, que está organizada de esta forma:
 
Para el conjunto de ejercicios que se van a proponer a continuación, las copias de seguridad se deben guardar en una carpeta denominada Copias Seguridad, que también deberás crear.

## EJERCICIO 1

1.1. Crear una nueva tarea denominada Completo donde se configure que sea realizada una copia de seguridad de la carpeta Documentos de forma manual cada vez que pulsemos el botón de ejecución del trabajo de backup. Establece que el fichero comprimido no esté encriptado e incluye en el nombre del mismo el tipo de backup y la fecha de realización.
1.2. Descarga dos ficheros PDF, llámalos File1.pdf y File2.pdf y cópialos en la Carpeta A.
Ejecuta el backup y verifica la creación del fichero comprimido con el nombre configurado.
•	¿Qué pasa si se ejecuta una segunda o tercera vez?

## EJERCICIO 2

2.1. Crea una tarea nueva llamada Diferencial, de forma que sea realice una copia de seguridad de la carpeta Documentos de forma manual. En este caso el fichero comprimido estará encriptado (clave 'SMR2-EJER2') y vamos a incluir en su nombre el tipo de backup y la fecha de realización, igual que en el ejercicio anterior. 
2.2. Con los mismos documentos del ejercicio anterior, ejecuta el backup que has creado y verifica el tipo de backup en el nombre del fichero comprimido. 
•	¿De qué tipo es el backup que se ha realizado? ¿Por qué?
•	¿Qué pasa si se ejecuta una segunda vez? ¿Por qué?
2.3. Ahora copiamos otro fichero llamado File3.pdf en la Carpeta B.
2.4. Ejecutamos de nuevo el trabajo de backup y se crea un nuevo fichero comprimido.
•	¿De qué tipo es ahora el backup? ¿Qué fichero/s contiene?
•	¿Qué pasa si se ejecuta una segunda vez? ¿Por qué?

## EJERCICIO 3

APARTADO 3.1

Crear un último fichero de Backup denominado Incremental. En este caso elegimos que este backup se realice de forma programada, a partir de una hora próxima (con un margen de unos 10 minutos es suficiente de forma que tengamos el tiempo suficiente para el siguiente paso). 
La periodicidad de la copia de la carpeta de documentos será diaria y el fichero comprimido se encriptará con clave 'SMR2-EJER3'. Igualmente, el nombre de fichero va incluir el tipo de backup y la fecha de realización.
Con los mismos documentos que habíamos finalizado el ejercicio anterior, ejecutamos el backup y verificamos el tipo de backup en el nombre del fichero comprimido.
•	¿De qué tipo es el backup que se ha realizado? ¿Por qué?
•	¿Qué pasa si se ejecuta una segunda vez? ¿Por qué?

APARTADO 3.2

Documentos: Ahora copiamos el fichero File1.pdf de la carpeta 'Ejercicio 3' en la Carpeta A, más moderno que el anterior.
Ejecutamos el trabajo de backup y se crea un fichero comprimido. 
•	¿De qué tipo es ahora el backup? 
•	¿Qué fichero/s contiene?

APARTADO 3.3

Modifica la programación del backup de forma que se ejecute de forma automática desde la hora que se había establecido, pero con una repetición cada 3 minutos (en las opciones avanzadas de la programación) a lo largo de una hora, por ejemplo. Así veremos cómo se ejecuta el backup cada 3 minutos y genera el backup incremental si fuera necesario.
Documentos: Para probar la ejecución repetitiva, vamos a copiar el fichero File2.pdf de la carpeta 'Ejercicio 3' en la Carpeta A.
Esperamos a la ejecución del backup y comprobamos la creación de un nuevo fichero comprimido con el fichero File2.pdf más moderno.
Por último, repetimos lo mismo con el fichero File3.pdf contenido en la carpeta 'Ejercicio 3' y se copia la Carpeta B, en este caso. Cuando corresponda la ejecución del backup se guardará un nuevo fichero comprimido con dicho fichero.

## EJERCICIO 4

Probar la recuperación de cada uno de los backups anteriores de forma completa, pero no sobre su ubicación original, sino sobre las carpetas 'Documentos 1', 'Documentos 2' y 'Documentos 3', respectivamente.
En el caso de los backups diferencial e incremental verificar que se puede recuperar la 1ª versión de los ficheros File1.pdf y File2.pdf sin extraer el resto de ficheros de la 
