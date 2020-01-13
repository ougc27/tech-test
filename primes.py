# -*- coding: UTF-8 -*-

"""
Módulo para realizar acciones con números primos
"""


class PrimeClass(object):
    """
    Clase para números primos
    """

    def is_prime(self, num_int):
        """
        Dado un número entero retorna un booleano si es primo o no
        :param: num_int: int
        :return boolean
        """
        if num_int < 2:
            return False
        for i in range(2, num_int):
            if num_int % i == 0:
                return False
        return True
