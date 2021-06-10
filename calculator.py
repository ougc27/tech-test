"""
This module ADD all the elements of a list.

"""


class calculator_class(object):
    """
    The class contains a method that add all the elements of a list. 

    Initialization:
    """

    def __init__(self, numbers):
        self.numbers = numbers


    def sum(numbers):
        """
        This method takes a list as an argument. 
        All the elements of the list will be add. 

        The argument of this method has to be a list.
            If is an integer, the method convert it to a list.
            If is a float or the list contains a float element, 
            an exception woll be raised.

        return: the sum of all the elements in the list.
        """

        numbers_list = []

        if type(numbers) == float:
            raise Exception("A number of the list is not an Integer")
        elif type(numbers) == int:
            numbers_list.append(numbers)
        else:
            numbers_list = numbers

        acumm = 0
        print("list: ", numbers_list)
        for num in numbers_list:
            if type(num) == float:
                raise Exception("A number of the list is not an Integer")
            acumm += num
        print("SUM:", end = ' ')
        return acumm
