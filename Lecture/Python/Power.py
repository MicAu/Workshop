def pow(x, N):
    # {N >= 0}

    result = 1
    i = 0

    while i < N:
        result = result * x
        i = i + 1

    # {result = x ^ n}
    return result