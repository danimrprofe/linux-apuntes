# Biblioteca

Crear un diseño entidad relación que permita gestionar los datos de una biblioteca de modo que
• Las personas socias de la biblioteca disponen de un código de socio y además necesitar
almacenar su dni, dirección, teléfono, nombre y apellidos
• La biblioteca almacena libros que presta a los socios y socias, de ellos se almacena su título,
su editorial, el año en el que se escribió el libro, el nombre completo del autor (o autores), el
año en que se editó y en qué editorial fue y el ISBN (identificador único internacional para
libros).
• Necesitamos poder indicar si un volumen en la biblioteca está deteriorado o no. Un volumen
es cada uno de los ejemplares que existen de un libro.
• Queremos controlar cada préstamo que se realiza almacenando la fecha en la que se realiza,
la fecha tope para devolver (que son 15 días más que la fecha en la que se realiza el
préstamo) y la fecha real en la que se devuelve el libro.

# Academia 

Crear un diseño entidad relación que permita controlar el sistema de información de una
academia de cursos siguiendo estas premisas:
• Se dan clases a trabajadores y desempleados. Los datos que se almacenan de los
alumnos son el DNI, dirección, nombre, teléfono y la edad.
• Además de los que trabajan necesitamos saber el CIF, nombre, teléfono y dirección
de la empresa en la que trabajan.
• Los cursos que imparte la academia se identifican con un código de curso. Además
se almacena el programa del curso, las horas de duración del mismo, el título y
cada vez que se imparte se anotará las fechas de inicio y fin del curso junto con un
número concreto de curso (distinto del código) y los datos del profesor o profesora
(sólo uno por curso) que son: dni, nombre, apellidos, dirección y teléfono
• Se almacena la nota obtenida por cada alumno en cada curso teniendo en cuenta
que un mismo alumno o alumna puede realizar varios cursos y en cada cual
obtendrá una nota.

# Empresa

Se desea crear una base de datos para almacenar los datos de los empleados
pertenecientes a una empresa.
• Los empleados tienen dni, no empleado, nombre y apellidos, dirección, salario y
fecha de nacimiento.
• Los empleados se agrupan en departamentos. Un empleado sólo puede pertenecer
a un departamento concreto. De los departamentos se almacena nombre y planta.
• Los departamentos se agrupan en centros. Un centro contiene varios
departamentos. De los centros se almacena nombre y dirección.
• A los empleados se les ofrecen cursos de formación. Todos los cursos que se
ofrecen son diferentes. Un empleado puede realizar varios cursos. En cada curso
habrá varios empleados realizándolo a la vez. De cada curso se almacena título,
duración en horas, fecha de inicio y fecha de fin.

## Informes y consultas

Ejercicio 1. Crear una consulta en la que se muestren nombre y planta de
todos los departamentos junto con el nombre y dirección del centro al que
pertenecen.
Ejercicio 2. Crear una consulta en la que se muestren nombre, apellidos,
dirección y salario de todos los empleados que trabajan en el departamento
“Ventas” (el nombre del departamento no debe mostrarse) junto con el nombre
y dirección del centro en el que se encuentra.
Ejercicio 3. Crear una consulta en la que se muestren nombre, apellidos,
dirección y salario de todos los empleados que van a cursar el curso “Hoja de
cálculo”
Las consultas deben llamarse consulta 1, consulta 2 y consulta 3.

Realiza 3 informes en los que cuales muestres la información que se pide en
las consultas anteriores. Deben llamarse informe 1, informe 2 e informe 3.
