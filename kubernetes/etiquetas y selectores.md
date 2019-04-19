# Etiquetas y selectores

Puedo etiquetar diferentes nodos (máquinas), de tal forma que en los despliegues puedo especificar
en qué tipo de nodos quiero que se despliegue un pod en concreto. Para ello:

1. Etiqueto el nodo o nodos que quiero agrupar

2. Modifico el YAML del despliegue agregando una opción NodeSelector, especificando la etiqueta sobre la 
que quiero hacer el despliegue.

3. De este modo, el pod sólo se va a ejecutar sobre los nodos que estén etiquetados de este modo.

