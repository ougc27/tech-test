"""
Desarrollador: Vargas Contreras Xavier Alexis
Version: 1.0
Fecha: 15 Julio 2020
"""

#La clase CalculatorClass contiene metodos para realizar operaciones con numeros
class CalculatorClass(object):

    #El metodo sum realiza una suma de los numeros optenidos por el parameto num_list
    def sum(self, num_list):
        sumador = 0
        #Se realiza un recorrido de la lista sumando cada elemento
        for elemento in range (0, len(num_list)):
            sumador = sumador + num_list[elemento]

        #Se Regresa el resultado de la suma de la lista
        return sumador
