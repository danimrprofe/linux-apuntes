Partículas

Crearemos un árbol de navidad y crearemos un efecto de nieve para practicar los sistemas de partículas. 

<img src="media/image44.png" id="image43">

La simulación con sistemas de partículas permite obtener animaciones complejas de objetos que responden a fuerzas gravitatorias y acciones como las que produce el viento o un campo magnético. De esta forma podemos recrear lluvia, nieve, y otros.

Vista lateral del resultado

<img src="media/image45.png" id="image44">

 Crear el objeto que va a caer como si fuera un copo

El copo que vamos a crear es una icosfera y, a partir de ella se crearán múltiples copias.

<img src="media/image46.png" id="image45">

Colocamos una icosfera con shift a mesh

Con G nos la colocamos en un sitio que no vea la cámara, fuera de plano. Esto que véis es desde  shading

<img src="media/image46.png" id="image46">

Le damos material y color para que se vea. Vamos a crear un material nuevo y le vamos a cambiar el nombre a nieve.

<img src="media/image47.png" id="image47">

Le damos las características que queramos, que hagan que los copos se vean lo más similares posibles a la nieve real.

<img src="media/image48.png" id="image48">

Crear un plano con emisiones

Shift+a plano, y colocamos un plano

Lo pondremos encima del árbol, pero que no salga en el plano de la cámara. con GZ lo movemos hacia arriba, para colocarlo sobre la escena. 

Con S escalamos para que cubra toda la zona en la que queremos que nieve.

<img src="media/image49.png" id="image49">

Al plano que lanza nieve le he cambiado el nombre para poder luego identificarlo más fácilmente.

<img src="media/image50.png" id="image50">

Configuramos el plano para que emita partículas

Seleccionamos el plano generador de nieve

<img src="media/image50.png" id="image51">

Le agregamos un particlesystem y configuramos los parámetros necesarios. Yo le he cambiado el nombre con F2 a partículas de nieve para identificarlo.

<img src="media/image51.png" id="image52">

Configuramos los parámetros necesarios como número de copos, frames de inicio y fin y vida de los copos (cantidad de frames hasta que desaparecen).

<img src="media/image52.png" id="image53">

Podemos ver la animación (tecla espacio), y veremos el efecto creado. De todos modos, tal como está en el render final no aparecerían las partículas.

Cambiamos el tipo de emisión para emitir objetos

Por último, 

Elegimos más abajo en render elegimos render as object

Revisamos que show emitter esté marcado

En el submenú object seleccionamos en instance object la icosfera que habíamos creado. De este modo, le estamos diciendo que cree todos los objetos a partir de este.

<img src="media/image53.png" id="image54">

También cambiaremos velocity y physics para ajustar el comportamiento de los copos  y que este sea más realista.

<img src="media/image54.png" id="image55">

Volved a simular la animación y veréis que ya se comportan más como copos de nieve.

<img src="media/image55.png" id="image56">

Colisiones y amortiguación

Al fondo hay que ponerle un modificador de colisión para que las partículas no lo atraviesen.

<img src="media/image56.png" id="image57">

Veréis que los copos rebotan como si fueran canicas, esto se puede modificar. En Physics podéis cambiar el comportamiento para que amortigüe los copos al tocar el suelo.

<img src="media/image57.png" id="image58">

Ahora los copos ya no atraviesan el plano y no rebotan, sino que se quedan parados en el suelo.

<img src="media/image58.png" id="image59">

Luz iluminación

Vamos a colocar una luz sobre la escena a fin de iluminar correctamente todos los objetos.

<img src="media/image59.png" id="image60">

Insertar un a luz de área que esté justo encima de los objetos que queremos iluminar

<img src="media/image60.png" id="image61">

Propiedades de la luz. En mi caso le he puesto 1000 W de potencia y me ha parecido suficiente.

<img src="media/image61.png" id="image62">

En mi caso he colocado la luz a 12 metros de altura, como referencia, por si lo queréis hacer así, y centrado en origen de coordenadas para la x y la y.

<img src="media/image62.png" id="image63">

Cámara

La cámara la podéis poner donde queráis. Yo la he modificado a ojo y en una posición en la que se vea bien la escena.

<img src="media/image63.png" id="image64">

Escena final

Aquí podéis ver un resumen de cómo queda la escena, con todos los elementos.

<img src="media/image64.png" id="image65">

Copo de nieve

Árbol

Cámara

Plano emisor de la nieve

Luz que ilumina la escena

Fondo

Render final

<img src="media/image66.png" id="image66">

<div class="break"></div>
