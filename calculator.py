"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Clase que contiene la funciona de suma la cual hara al suma de una
    lista de numeros que se le enviaran 
    """

    def sum(self, list):
        """
        Esta Fencion recibe una lista de numeros para realizar una suma
        de todos los numeros que contiene y retorna el resultado final
        """
        # your sum code here
        suma = 0
        for i in list:
            suma = suma + i
        print(suma)
        return suma

#instancia = CalculatorClass()

#suma = instancia.sum([1,5,6,7,2])