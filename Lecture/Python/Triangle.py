def triangle(N):
    # {N >= 0}
    n = 0
    t = 0
    while n < N:
        n = n + 1
        t = t + n
    # {t == N * (N + 1) / 2}
    return t


    