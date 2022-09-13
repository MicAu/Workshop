def selectionSort(a):
    n = 0
    while n != len(a):
        mindex = n
        m = n + 1
        while m != len(a):
            if(a[m] < a[mindex]):
                mindex = m
            m = m + 1
        
        a[n] , a[mindex] = a[mindex], a[n]
        n = n + 1


