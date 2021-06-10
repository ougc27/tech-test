"""
This module contains a class that help the user to determines if
a number is prime or not.

Calling the class, the argument has to be a integer. 
"""


class prime_class:
    """
    Class with a method called is_prime to determine 
    if a number (int) is prime.

    initialization:
    """
    def __init__(self, num):
        self.num = num


    def is_prime(num):
        """
        The argument called num will be revised to be an integer.

        Using a while, the method will loop through all the numbers
        before num and will divide between them to verify the remainder.

        If the reminder is cero, it means that the num is not prime.

        return: boolean 
        """

        if num == 0:
            return False
        elif num % int(num) != 0:
            raise Exception ("The number is not an Integer")

        var = num - 1
        while (var > 1):
            if(num % (var) == 0):
                return False
                break
            var -= 1
        return True
