'''Ejemplo de uso de un método de las listas'''
nombres=['Paco','María','Raquel']
#al definir nombres como una lista, ya puedo llamar a
cualquiera de los métodos que se aplican sobre listas.
#vamos a añadir un elemento al final de la lista
print('Lista previa')
print(nombres)

print('El primer elemento es:')
print(nombres[0])

print('Dame el elemento a añadir')
nuevo = input()
nombres.append(nuevo) #añade elemento al final
print('Lista después de añadir un elemento')
print(nombres)
#fíjate que el método se llama en la lista concreta sobre la
que se quiere usar, NO se pone lista.append, sino
nombres.append
print('Lista previa')
print(nombres)
print('Dame el elemento a insertar')
nuevo = input()
print('Dame la posición de inserción')
posicion = int(input())
nombres.insert(posicion,nuevo) #inserta elemento en la posición
dada, ojo a la numeración que empieza por cero
print(nombres)

#de nuevo llamamos al método con el objeto concreto que usamos