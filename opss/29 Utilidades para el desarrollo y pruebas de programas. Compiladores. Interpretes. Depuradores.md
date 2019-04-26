# Utilidades para el desarrollo y pruebas de programas. Compiladores. Interpretes. Depuradores

- [5.    Entornos de desarrollo](#5-entornos-de-desarrollo)
- [6. Bibliografia](#6-bibliografia)

## 1. Introducción

* Lenguaje ordenadores formado por nistrucciones codificadas en código binario
* Lenguajes de programación formado por símbolos y reglas que permiten escribir programas
	- Creados para facilitar la tarea de programación
	- Compuestos por un léxico, sintaxis y semántica
* Necesidad de traducir de un programa escrito en un lenguaje fuente a un lenguaje máquina. Tipos de traductores
	- Compiladores
	- Intérpretes
* Según lenguajes de programación uno u otro
	- C++ compilado
	- Java compilado e interpretado
	- SQL, interpretado

## 2. Compiladores

* Convierte un programa de un lenguaje a otro, informando de posibles errores y generando los resultados a partir de datos de entrada.
* A partir de un lenguaje fuente se crea un programa objeto ejecutable
* Ventajas
  - Solo una compilación y el código objeto se puede ejecutar muchas veces sin necesitar de recompilar
  - Si se encuentra un error no se genera un programa objeto
	- Programas objeto codificados, por lo que son “confidenciales” al no mostrar el código
	- Mayor eficiencia que los lenguajes interpretados
	- Consumen mayor cantidad de memoria
	- Los archivos compilados solo serán ejecutables en el tipo de máquina para el que han sido compilados
* Tipos de compiladores
	- De una o varias pasadas
	- Compiladores incrementales
	- Compiladores cruzados
* Etapas del proceso de traducción
	- Etapa de análisis
	Análisis léxico
	Análisis sintáctico (parsers)
	Análisis semántico
	- Etapa de síntesis
	Código intermedio
	Optimización de código
	Generación de código
* Elementos importantes en las etapas
	- Tabla de símbolos: 
	Estructura de datos que guarda información generada durante el proceso de compilación
	- Manejador de errores: decide acciones a realizar al encontrar un error en el proceso de compilación
* Gestión de errores
	- Errores léxicos, semánticos o sintácticos
	- Errores de compilación
	- Errores de ejecución
* Módulos externos al compilador
	- Preprocesador: por ejemplo incluir código de librerías
	- Ensamblador: traduce a código máquina
	- Enlazador: crea ejecutables a partir de código bojeto y librerías 

## 3. Intérpretes

* Estructura de un intérprete
	- Traductor a representación interna
	- Tabla de símbolos
	- Evaluador de representació interna
	- Tratamiento de errores
* Tipos de intérpretes
	- Iterativos o recursivos
	- Puros, avanzados, incrementales

## 4. Depuradores

* Algunos erroes no se detectan durante la compiación, sino durante la ejecución. 
* Necesidad de herramienta para localizar errores en tiempo de ejecución
* Ejecutan un programa y permiten detener ejecución y observar lo que ocurre dentro de el
* Situación de variables, por ejemplo
* Herramientas que ofrecen al programador
    - Puntos de parada o breakpoints
	- Ejecución paso a paso
	- Ventana de seguimiento de variables
	- Modificar valores de varaibles o añadir instrucciones nuevas
* Tipos de depuradores
	- Dentro del entorno de programación
	- Independientes del compilador

## 5. Entornos de desarrollo

  - Combinación de herramientas para autmoatizar y simplificar desarrollo de software.
- Etapas: escribir código fuente. Compilar. Enlazar código y librerías, y depurar
	- Antiguamente con herramientas diferentes para cada proceso. Un IDE combina las herramientas conjuntamente 
	- Editor comprende sintaxis y marca partes del código y reconoce errores
	- El editor permite situarse en los diferentres puntos del programa al depurarlo
	- Componentes: Editor de textos, compilador, intérprete, depurador
	- Componentes adicionales: 
	ejecución automática de pruebas
	control de versiones
	generador de documentación
	Optimización de código

## 6. Bibliografia
