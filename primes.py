"""
Methods to manipulate prime numbers
"""


class PrimeClass(object):
    """
    Class to manipulate prime numbers
    """

    def is_prime(self, num_int):
        """
        Return True if the number is prime, otherwise, return False
        using a simple primality test with 6k +/- 1 optimization
        """
        if num_int <= 1:
            return False
        if num_int <= 3:
            return True
        if (num_int % 2 == 0 or num_int % 3 == 0):
            return False

        auxiliar = 5
        while auxiliar * auxiliar <= num_int:
            if (num_int % auxiliar == 0 or num_int % (auxiliar + 2) == 0):
                return False
            auxiliar += 6

        return True
