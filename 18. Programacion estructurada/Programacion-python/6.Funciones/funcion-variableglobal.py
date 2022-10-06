'''Cambiamos el valor de una variable global desde DENTRO de una
función. Aquí te cuento como hacerlo, usando global.'''
def prueba():
    global var1
    var1=45

var1=3
prueba()
print('Valor de var1', var1)