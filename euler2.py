
def euler2(N):
    lastfib = 1
    curfib = 0
    n = 0
    summ = 0
    while curfib < N:
        if n == 0:
            summ = summ + curfib

        temp = curfib
        curfib = curfib + lastfib
        lastfib = temp

        if n == 2:
            n = 0
        else:
            n = n + 1

    return summ