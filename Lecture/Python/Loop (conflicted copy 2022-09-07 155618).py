def max(a):
    if len(a) == 0:
        return 0
    max = a[0]
    i = 1
    while i < a.Length:
        if a[i] > max:
            max = a[i]
        i = i + 1
    return max


    