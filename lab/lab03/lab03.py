""" Lab 3: Recursion and Midterm Review """

def gcd(a, b):
    """Returns the greatest common divisor of a and b.
    Should be implemented using recursion.

    >>> gcd(34, 19)
    1
    >>> gcd(39, 91)
    13
    >>> gcd(20, 30)
    10
    >>> gcd(40, 40)
    40
    """
    "*** YOUR CODE HERE ***"
    max_num = max(a, b)
    min_num= min(a, b)
    if not max_num % min_num:
        return min_num
    else:
        return gcd(min_num, max_num % min_num)
		
def hailstone(n):
    """Print out the hailstone sequence starting at n, and return the
    number of elements in the sequence.

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    """
    "*** YOUR CODE HERE ***"
    time = 0
    def recursion(a):
        print(a) 
        nonlocal time 
        time += 1
        if a == 1:
            return time
        elif not a % 2:
            return recursion(a // 2)
        else:
            return recursion(a * 3 + 1)
    return recursion(n)
