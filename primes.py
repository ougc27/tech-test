"""
Your module documentation here
"""


class PrimeClass(object):
    """Clase en la cual encontraremos la funcion
        para verificar si algun numero es primo"""
    def is_prime(self, num):
        """Funcion para verificar si un numero es primo
        para determinarlo tiene que ser divisible dos veces por 1 y por
        si mismo Iniciamos con un for desde la posicion 2 hasta llegar
        a nuestro numero si se encuentra una division antes de llegar a
        dicho numero quiere decir que no es primo"""
        # your primes code here
        for i in range(2, num):
            if num % i == 0:
                print('No es Primo')
                return False
        print('Es Primo')
        return True

#instancia = PrimeClass()

#resultado = instancia.is_prime(5)