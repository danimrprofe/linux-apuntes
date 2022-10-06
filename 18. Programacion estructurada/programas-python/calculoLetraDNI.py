'''Calcula la letra del DNI usando una lista'''
letras_dni=['T','R','W','A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X','B','N',
'J','Z', 'S', 'Q','V','H',' L','C',' K', 'E']
print('Introduce tu número del DNI (sin la letra)')
num_dni=int(input())
resto=num_dni%23
print(resto)
resultado = letras_dni[resto] 
print('La letra de tu DNI es',resultado)