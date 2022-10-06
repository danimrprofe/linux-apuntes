import random

intentos = 0
maximo = 0
clave = 0
prueba = 0
intentoMax = int(input('Cuántos intentos quieres? '))
maximo = int(input('Dime el número máximo: '))
clave = random.randint(1, maximo)
while True: 
    intentos += 1
    if (intentos > intentoMax):
        print('Te quedaste sin intentos')
        break
    prueba = int(input('Intenta adivinarlo: '))
    if (prueba == clave):
        print('Acertaste en ' + str(intentos) + ' intentos')
        break
    elif (prueba < clave):
        print('Te quedaste corto y te quedan ' + str(intentoMax - intentos) + ' intentos')
    elif (prueba > clave):
        print('Te pasaste un poco y te quedan ' + str(intentoMax - intentos) + ' intentos')