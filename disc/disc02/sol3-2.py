def count_k(n, k):
    """
    >>> count_k(3, 3) # 3, 2 + 1, 1 + 2, 1 + 1 + 1
    4
    >>> count_k(4, 4)
    8
    >>> count_k(10, 3)
    274
    >>> count_k(300, 1) # Only one step at a time
    1
    """
    if n < 0:
        return 0
    elif n == 0:
        return 1
    else:
        sum = 0
        for i in range(1, k + 1):
            sum += count_k(n - i, k)
        return sum