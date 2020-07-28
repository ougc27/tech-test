"""
Script de suma de variables dentro de una lista.
"""


class CalculatorClass(object):
    """
    Esta clase permite la adicion de datos dentro de una lista para obtener una
     suma de los mismos.
    """

    def sum(self, num_list):
        """
        Al correr el script estara pidiendo datos y agregandolos a una lista
         hasta que se le ingrese el valor '0' para terminar la ejecucion del
          while y asi avanzar a realizar la suma de los valores dentro de la
           lista e imprimirlos.
        """
        # your sum code here
        Datos = []
        while num_list != "0":
            Datos.append(num_list)
            num_list = int(input(
                "Introduzca un numero (Introduzca '0' para finalizar):"))
            
        else:
            Suma = sum(Datos)
            print(Suma)


numeros = int(input("Introduzca un numero (Introduzca '0' para finalizar): "))
primaro = CalculatorClass()
primaro.sum(numeros)