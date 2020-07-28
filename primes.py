"""
Modulo de insercion de valores en donde se valida si son numeros primarios o no.
"""


class PrimeClass(object):
    """
 
    Clase de inicializacion de funciones para validacion de datos.
    """


    def is_prime(self, num_int):
        """
        La funcion is_prime requiere un valor para determinar si es un numero
        primario o si no lo es. Condicionando que un número primo es un
        número que solo es divisible por sí solo y por 1.
        
        """
        # your primes code here
        if num_int <  2:
            return False
        for i in range(2, num_int):
            if num_int % i == 0:
                return False
        return True
valor = int(input("Introduzca un numero: "))
primaro = PrimeClass()
primaro.is_prime(valor)