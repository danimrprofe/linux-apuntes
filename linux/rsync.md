# Rsync

El comando **rsync** es otra forma de transferir datos y mantener sincronizados los datos en el origen y destino

Si transfiere los datos por primera vez a un recurso remoto, rsync y scp pueden mostrar un rendimiento similar, excepto cuando la conexión cae

Si se interrumpe una conexión, al reiniciar la transferencia de datos, rsync transfiere automáticamente solo los archivos restantes al destino, se omiten los archivos ya transferidos

rsync transfiere solo las partes cambiadas reales de un archivo (en lugar de de transferir un archivo completo)

Este método selectivo de transferencia de datos puede ser mucho más eficiente que scp porque reduce la cantidad de datos enviados a través de la red


