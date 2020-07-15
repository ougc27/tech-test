"""
Desarrollador: Vargas Contreras Xavier Alexis
Version: 1.0
Fecha: 15 Julio 2020
"""
#La Clase PrimeClass contiene metodos para realizar operaciones con numeros primos
class NumerosPrimos(object):

    #El metodo is_prime verifica si un numero obtenido por un parametro llamado numero_entero
    def verificar_numero_primo(self, numero_entero):

        #Verificamos que el numero obtenido por parametro en el modulo sea mayor a 1
        if numero_entero <= 1:
            return False

        #Verificamos que el numero sea solo divisible entre uno y el mismo
        else:
            for elemento in range(2, numero_entero):

                #Retornamos False si el numero es divisible por otros numeros no es primo
                if numero_entero % elemento == 0:
                    return False

            #Retornamos True si solo es divisible entre 1 y el mismo numero es un numero primo
            return True
