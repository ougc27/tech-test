"""
Module that contain a simple calculator
"""


class CalculatorClass(object):
    """
    Calculator Class with simple methods
    """

    def sum(self, num_list):
        """
        Return the sum of a number list
        """
        final_sum = 0
        for num in num_list:
            final_sum += num
        return final_sum
