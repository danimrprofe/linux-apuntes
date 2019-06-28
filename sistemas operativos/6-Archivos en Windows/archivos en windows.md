
# 5. Atributos

Para asignar atributos a carpetas o directorios, en primer lugar tendremos que saber dónde se localizan. Ya hemos visto en el punto 2 y en la Tabla 7.1 cuáles eran los atributos normales de cualquier directorio.

Si seleccionamos una carpeta y elegimos Propiedades, veremos una ventana en la cual, en la parte inferior, se muestran, entre otros, los atributos de una carpeta, que son los siguientes:

Solo lectura. Indica que, en principio, solo podremos leer los contenidos que haya en ella, aunque en realidad este atributo permite crear archivos y carpetas dentro de la carpeta principal. Este atributo lo genera el sistema por defecto, pero tiene poca repercusión sobre las carpetas.
Este atributo tiene su utilidad cuando se comparten carpetas en la red, para evitar accesos inseguros, pero no tiene repercusión a efectos de configuración local.

Oculto. Si lo activamos, la carpeta deja de verse en la estructura de directorios, a menos que en las opciones de vista de carpetas tengamos seleccionado que se muestren también las carpetas ocultas. En principio y por defecto, el sistema no nos mostrará carpetas ocultas.

Para poner o quitar estos dos atributos marcaremos o desmarcaremos, respectivamente, las casillas correspondientes. En entorno gráfico, solamente podremos asignar o quitar estos dos atributos. Para manejar el resto de atributos tendremos que hacerlo en entorno comando.

5. Atributos
Visualizar los atributos de una carpeta o directorio
La orden ATTRIB se puede utilizar de diferentes formas:
ATTRIB. Puesta sin parámetros, muestra por pantalla los atributos de todos los ficheros del directorio activo.
ATTRIB nombre_de directorio. Se visualizan los atributos del fichero especificado.
Si se utiliza el parámetro /S, además se visualizarán los atributos de los ficheros que se ajusten a la plantilla y que estén en subdirectorios que cuelguen del directorio especificado en la orden.
Dar o quitar atributos a directorios o carpetas
Los atributos se ponen de la misma forma que se quitan. Solamente los símbolos + o - indicarán, respectivamente, si el atributo se asigna o se elimina a un archivo o a un conjunto de archivos.

16.	¿Se pueden poner atributos a directorios que tengan el atributo de Oculto?
17.	¿Cómo podemos visualizar directorios que tienen el atributo de Oculte?
18.	¿Es obligatorio que un archivo tenga nombre y extensión?
19.	¿En qué se mide el tamaño de los archivos?
24.	¿Es lo mismo copiar que mover un archivo?
25.	¿Se puede mover un archivo utilizando la orden COPY?
26.	¿Se puede copiar un archivo usando la orden MOVE?
6. Introducción a los archivos
Los archivos, también denominados ficheros representan una colección de información (datos relacionados entre sí) localizada o almacenada en alguna parte del sistema de archivos.
Técnicamente hablando, un archivo es un flujo unidimensional de bytes tratado por el sistema operativo como una entidad única. 
Es un conjunto de bits (0 y 1) que referencian algún tipo de información específica como un texto, un gráfico, un sonido, etc. 
Los archivos son el conjunto organizado de informaciones de un mismo tipo y que pueden utilizarse en un mismo tratamiento.

# 7. Características de los archivos

Todo archivo o fichero, para poder ser utilizado, debe tener un formato concreto y ser de un tipo en particular. Este formato incluye:
Nombre y extensión

Cada archivo queda identificado por un nombre y una extensión. 

El nombre es obligatorio, pero la extensión es opcional y suele identificar el tipo de archivo. 

Los nombres de archivos originalmente tenían un límite de ocho caracteres (MS-DOS) más 3 de extensión. 

En la actualidad el nombre puede ser mucho mayor (hasta 255 caracteres), dependiendo del sistema de archivos, pero la extensión sigue determinando el tipo de archivo y puede ser de tres o más caracteres (
Información sobre el archivo. 
Según el sistema de archivos, de cada archivo o fichero se guarda fecha de creación, de modificación y de último acceso. 
Los archivos poseen determinadas propiedades llamadas atributos, determinan su ámbito de visibilidad, y lo que se puede hacer o no con ellos.
Tamaño. 
Los archivos tienen también un tamaño que se mide en Bytes, KB, MB o GB, etc. 
El tamaño máximo de un archivo en un soporte de almacenamiento, dependerá del sistema de archivos del soporte 
Ubicación. 
Todo archivo tiene que estar almacenado necesariamente dentro de un directorio o subdirectorio (carpeta en Windows)
Por último, indicar que los archivos pueden separarse en dos grandes grupos: 
Ejecutables (extensión COM o EXE) 
No ejecutables (otra extensión).
7. Características de los archivos
Los archivos como colección de datos son manejados por los diferentes programas informáticos, ya sean propios del sistema operativo o bien aplicaciones informáticas.
Los archivos son independientes unos de otros, aunque pueden estar interrelacionados.
La información que almacenan es permanente.
Los archivos pueden ser utilizados por varios programas o por uno solo. Esto dependerá del tipo de archivo. Por ejemplo, un archivo de música se puede reproducir con el reproductor Windows Media, Winamp, Nero, etc.
En principio, y dependiendo del sistema de archivos y del programa que se emplee para gestionar el archivo, la información que pueden almacenar no tiene límite.
Carpetas y directorios pueden tener nombres cuyas reglas de formación serán prácticamente idénticas a las de los nombres de los archivos.


8. Operaciones generales sobre archivos
En general las operaciones que se pueden realizar sobre archivos son:
Creación. Consiste en hacer que el fichero exista. Cuando se crea un archivo, este tiene unas características que lo diferencian del resto: el nombre y/o la extensión normalmente asignados por el usuario y el resto de características como la hora y la fecha de creación, el tamaño, etc., son datos asignados por el sistema.
Consulta. Consiste en acceder a un archivo para ver su contenido.
Actualización. Consiste en modificar el contenido de un archivo.
Borrado. Consiste en eliminar totalmente un archivo dejando libre el espacio de almacenamiento que ocupaba.
Cambio de nombre o Renombrado. Cambiar el nombre o la extensión de un archivo.
9. Características y organización de archivos
Todos los archivos siempre tienen nombre. Los archivos se ubican en directorios. El nombre de un archivo debe ser único dentro de cada directorio, aunque se puede repetir en otro directorio diferente. En definitiva, no pueden existir dos archivos con el mismo nombre en la misma ruta.
El nombre de un archivo depende del tipo de sistema operativo y del propio sistema de archivos. Inicialmente, los nombres eran del tipo 8.3 o nombres cortos. Ahora, en los sistemas operativos actuales, los nombres son largos, es decir, pueden contener casi cualquier combinación de letras y dígitos, incluyendo espacios en blanco, gracias al uso de UNICODE. Como regla general, un archivo no contendrá ninguno de los siguientes caracteres en su nombre: \ /?:*"> < |
Por otro lado, la distinción entre mayúsculas y minúsculas en los nombres de archivo viene determinada por el sistema de archivos. Los sistemas de archivos UNIX/Linux distinguen normalmente entre mayúsculas y minúsculas, y los sistemas Windows no.
La mayoría de los sistemas operativos organizan los archivos en jerarquías llamadas carpetas, directorios o catálogos. Cada directorio o carpeta puede contener un número arbitrario de archivos, y también otras carpetas o subdirectorios.
Todos los sistemas de archivos proporcionan métodos para proteger los archivos de daños accidentales o intencionados. Los sistemas operativos asignan a los archivos los denominados atributos, que determinan lo que se puede o no hacer con un archivo y la visibilidad del mismo dentro de la estructura del sistema de archivos.
Los atributos se aplican por igual a archivos y a directorios o carpetas, ya que los directorios son un tipo especial de archivos que contienen otros archivos o carpetas.

# 10. Compresión de archivos

La mayoría de los sistemas actuales disponen de herramientas específicas para comprimir archivos.

La operación de compresión consiste en hacer que un archivo ocupe menos tamaño en el espacio de almacenamiento, normalmente con el fin de copiar archivos en otros soportes o para realizar copias de seguridad.

Si el sistema operativo no tiene herramientas propias de compresión, hay otras aplicaciones como WinRAR, WinZip, etc., que sirven para comprimir archivos.

La gran diferencia es que si utilizamos herramientas propias del sistema operativo, 
la compresión y descompresión será transparente para el usuario. Por el contrario, si utilizamos herramientas adicionales, esta operación necesitará de la intervención del usuario.

Supongamos que el sistema operativo dispone de una herramienta propia de compresión, como Windows XP o 7. Si comprimimos un archivo, nosotros lo veremos igual en la estructura del sistema de archivos, con su nombre, extensión, etc. Al abrirlo, lo que ocurrirá simplemente es que el archivo se descomprimirá de forma automática y se ejecutará con la aplicación a la que esté asociado.

Si por el contrario utilizamos herramientas adicionales, el archivo cambiará de tipo. Tendrá el nombre que queramos, pero la extensión será diferente, y necesitaremos extraerlo para poder abrirlo y utilizarlo.

Además, es importante tener en cuenta que este archivo solamente lo podremos abrir en sistemas operativos que dispongan de la herramienta adecuada para descomprimirlo.
Ya veremos en cada uno de los sistemas operativos cómo podemos comprimir los archivos con herramientas propias del sistema.

# Comodines

Los comodines se utilizan para identificar varios archivos de una sola vez, especialmente cuando realizamos operaciones sobre ellos. Estas operaciones podrán ser borrado, copia, movimiento, etc.

Los comodines se llaman así porque pueden sustituir a un carácter o a varios en los nombres de archivo.

Se utilizan en sistemas Windows o Linux, especialmente en modo comando, y son los siguientes:

- Carácter ?. Representa cualquier carácter válido en el nombre de un archivo. Solo sustituye o representa a uno de ellos.
- Carácter *. Representa uno o más caracteres válidos en el nombre de un archivo. Sustituye caracteres por el principio, por el final o por el centro del nombre del archivo especificado.

En modo comando, la mayoría de las órdenes de manejo de ficheros que pueden incluir trayectorias aceptan caracteres comodín, a excepción de la orden TYPE.

Podemos abrir o visualizar tantos documentos como queramos. Para ello, si seleccionamos varios documentos a la vez, sean del tipo que sean, si tienen asociados una aplicación, cada uno se abrirá con la herramienta correspondiente.

Recordamos que para poder ver el contenido de un archivo, este tiene que haber sido creado previamente. Para crear un archivo en Windows, utilizaremos la herramienta necesaria. Una vez introducido el contenido del archivo, en la línea de menú de cualquier aplicación existen las opciones de Guardar y de Guardar como. Ambas hacen lo mismo, almacenar un archivo en un disco o disquete en la zona que queramos. La diferencia es que con Guardar, el archivo siempre se almacena con el primer nombre asignado, en la carpeta y unidad seleccionadas en primer lugar, mientras que en el caso de Guardar como tenemos la posibilidad de cambiar el nombre y la ubicación del archivo a almacenar.

Cada archivo de Windows está asociado a una aplicación, que es el programa con el que se ejecuta o abre.

# 12.3.	Imprimir un archivo

Ocurre lo mismo aue en el caso anterior. En primer lugar, debemos modificar o visualizar el archivo, y luego, en la línea de menú de la herramienta, seleccionar la opción Archivo>lmprimir o directamente pulsar en el icono de la impresora. 

Equivale a la orden **PRINT** en entorno comando.

Otra forma de imprimir un archivo es seleccionarlo primero, pulsar el botón derecho del ratón y elegir la opción Imprimir. El resultado es el mismo aunque más rápido.

Es evidente que para poder imprimir archivos, estos tienen que estar vinculados a una aplicación concreta. Si seleccionamos un archivo que no tenga asociada una aplicación, Windows ofrecerá una lista de aplicaciones con las que editarlo para después imprimirlo. Esta operación no siempre funciona de forma correcta, ya que hay veces que el ¡cono con el que se representa un archivo no identifica la aplicación con la que se creó.

# 12.4.	Cambiar el nombre a un archivo

Esta operación también se puede realizar con carpetas o directorios, y equivale a la orden REN en entorno comando.

Es importante tener en cuenta que normalmente, cuando se visualizan los archivos de un directorio, no suele verse la extensión que tienen. Según esto, lo único que podremos hacer es cambiar el nombre.

Si quisiéramos ver las extensiones de los archivos y así tener la opción de modificarlas, tendríamos que hacer previamente lo siguiente: acceder a Panel de control, seleccionar:

- Opciones de carpeta > Ver
- En la lista Configuración avanzada, quitar la marca de selección a la casilla Ocultar las extensiones de archivo para tipos de archivos conocidos.

De esta forma podemos ver la extensión de los archivos y, si queremos, modificar su extensión, siempre y cuando la tengan, que es lo más normal.

Para cambiar el nombre y/o la extensión de un archivo, podemos hacerlo de forma similar a como lo hacíamos con las carpetas.

## Renombrar varios archivos

Si realizáramos una selección múltiple de archivos, podríamos modificar los nombres de todos ellos, pero teniendo en cuenta que el nombre nuevo sería el mismo para cada archivo. El archivo sobre el que realizamos la opción de cambiar el nombre tomaría el nombre nuevo. El resto de archivos se llamarán igual que este pero seguidos de un número entre paréntesis, desde el uno hasta el número de archivos seleccionados.

Por el contrario, no es posible cambiar la extensión a todos los archivos utilizando este método. Ya veremos en una unidad posterior cómo se realiza esta operación.

# 12.5. Copiar y mover archivos

Esta operación es parecida a la de mover y copiar carpetas. 

Si utilizamos el entono comando, 

Las órdenes equivalentes a copiar son COPY y XCOPY y para mover se utiliza MOVE.

Si utilizamos el Explorador, que es lo más conveniente, deberemos proceder de la misma manera que con las carpetas. Primero, habrá que determinar origen y destino del archivo a copiar o mover, luego seleccionar y arrastrar el archivo con el botón derecho del ratón y, llegados al destino, soltar el ratón y elegir la opción de copiar o de mover.

También se puede hacer la operación con el botón izquierdo, pero esta acción es de movimiento de archivo y no de copia. Si la operación la realizamos entre dos unidades diferentes de almacenamiento, por ejemplo, disco duro y disquetera, la operación será de copia. Esto quedará indicado apareciendo un pequeño ¡cono con el símbolo + al arrastrar el objeto de una unidad a otra.

- Si mientras realizamos el desplazamiento del objeto, 
- Si mantenemos pulsada la tecla **CTRL**, la acción siempre será de copia
- Si mantenemos la tecla **SHIFT** pulsada, la acción será de movimiento

Por otro lado, al realizar la copia no podemos modificar directamente el nombre del fichero en el destino, acción posible en modo comando. 
Si queremos modificar el nombre del fichero en el destino, tendremos que situarnos sobre él y luego cambiarle el nombre.
También podemos realizar la copia utilizando las opciones Cortar, Copiar o Pegar de la línea de menú.

# 12.6. Eliminar archivos

Seleccionaremos el o los archivos a eliminar, y pulsaremos la tecla **Supr** o el botón derecho del ratón para elegir la opción Eliminar del menú contextual. 

Las órdenes equivalentes en entorno comando son **DEL** y **ERASE**.

Los archivos seleccionados, previa confirmación, los enviaremos a la **Papelera de reciclaje**, de donde podremos eliminarlos definitivamente o recuperarlos posteriormente.

Hay una forma de eliminar los archivos y carpetas de forma permanente sin tener que enviarlos a la Papelera de reciclaje. 

En las Propiedades de la Papelera de reciclaje, activaremos la casilla No mover archivos a la Papelera de reciclaje. Purgarlos al eliminarlos. De esta forma la eliminación de un archivo o carpeta siempre será permanente.

# Atributos de los archivos

Para asignar atributos a archivos procederemos de forma similar a como lo hacíamos con carpetas en entorno gráfico o con la orden **ATTRIB** en modo comando.

Los atributos normales aplicados a ficheros son los mismos que pueden tener las carpetas: Solo lectura y Oculto. Para poner o quitar estos dos atributos marcaremos o desmarcaremos las casillas deseadas.

En entorno gráfico, solamente podremos asignar o quitar estos dos atributos, que ya sabemos lo que significan. Para manejar el resto de atributos tendremos que hacerlo en entorno comando.

Visualizar los atributos de un fichero

La orden ATTRIB se puede utilizar de diferentes formas:
ATTRIB. Puesta sin parámetros, muestra por pantalla los atributos de todos los ficheros del directorio activo.
ATTRIB nombre de fichero. Se visualizan los atributos del fichero especificado.

Si se utiliza el parámetro /S, se visualizarán los atributos de los ficheros que se ajusten a la plantilla y que estén en subdirectorios del directorio especificado.
Quitar o poner atributos a ficheros

Los atributos se ponen de la misma forma que se quitan. Los símbolos + o - indicarán, respectivamente, si se añade o elimina un archivo o un conjunto de archivos.

# Buscar archivos

Hay veces en las que es conveniente localizar un archivo dentro de una estructura de datos. Si sabemos la ubicación exacta del archivo, no hay problema.

El problema surge cuando solo hay una pequeña referencia del nombre del archivo.
Conocemos sus caracteres iniciales, o su extensión, pero no conocemos más. 

Por ejemplo, para buscar los archivos con extensión .txt en la estructura de directorios ejecutaremos Inicio > Buscar e introduciremos el parámetro de búsqueda *.txt. 

Así obtendremos todos los archivos que cumplan este requisito.
Podremos afinar la búsqueda pulsando Opciones avanzadas.
