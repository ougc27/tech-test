# -*- coding: UTF-8 -*-

"""
Módulo para una calculadora
"""


class CalculatorClass(object):
    """
    Calculadora con operaciones básicas
    """

    def sum(self, num_list):
        """
        Dada una lista de números enteros retorna la suma de ellos
        :param: num_list: list
        :return int: suma de elemtos de la lista
        """
        result = sum(num_list)
        return result
