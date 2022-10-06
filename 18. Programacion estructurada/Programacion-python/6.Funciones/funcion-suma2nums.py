'''Función que suma dos números'''
def sumador(a, b):
    resultado = a + b
    return resultado

var1 = int(input('dime el primer sumando ')) 
var2 = int(input('dime el segundo sumando '))

solucion = sumador(var1, var2)

print('El resultado de sumarlos es', solucion)