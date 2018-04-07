# Project Euler Everything
Solving Project Euler Problems one by one

Problem 1: Finished

Solution: 

Take some list of bases [b1,b2,b3...bn]

the product of all bases is a multiple of every base. Call it b'

Let B = {x : bi%x = 0, 0 <= i <= n, 0 <= x < b'}

B is the list of all multiples of bases inbetween 0 and b'.
...

    B = [0]
    for n = 1:(prod(blist)-1)
        for s in blist
            if n%s == 0 && !(n in B)
                push!(B,n)
            end
        end
    end

...

This algorithm is O(nb'), so quite slow if the amount/values of bases are large. TO DO: Implement polynomial time algorithm.

Every number N can be expressed as 

N = qb' + r with 0 <= r < b' by the Division Theorem

Let S(n) is the sum of all multiples of the bases b1,b2,...bn less than n.

Note: x0 + x1 + x2 + x3 ... + xL = S(b') = Sum of all elements of B. |B| = L

...

    S(qb') = 

      (0b' + x0) + (0b' + x1) + x2 + x3 + x4 + ... + xL       =   S(b')
    + (1b' + x0) + (1b' + x1) + (1b' + x2) + ... + (1b' + xL) = +  Lb' + S(b')
    + (2b' + x0) + (2b' + x1) + (2b' + x2) + ... + (2b' + xL) = + 2Lb' + S(b')
                                      .
                                      .
                                      .
    +(q-1)b' + x0 + (q-1)b' + x1 ... + (q-1)b' + xL           = + (q-1)Lb' + S(b')
                                                       S(qb') = (1 + 2 + 3 + ... + (q-1))Lb' + qS(b')
                                                       S(qb') = (q-1)(q)(L)(b')/2 + qS(b')

...

S(N) = S(qb') + (qb' + x0) + (qb' + x1) + (qb' + x2) + (qb'+ x3) ... + all elements in B less than r

These extra terms are computed:

...

    for s in B
        if s < r
            summ = summ + s + N - r
        end
    end
...

With large values of the division by 2 would lead to a rounding error, so I checked if q or q-1 is even. One of them must be, so take that one and perform a logical shift to the right, avoiding dealing with floats in general.


    if q%2 == 0
        p = q >>> 1
        summ = summ + q*sum(B) + (q-1)*prod(blist)*length(B)*p
    else
        p = (q-1) >>> 1
        summ = summ + q*sum(B) + q*prod(blist)*length(B)*p
    end

For list of bases = [3,5] this problem is the Euler Project Problem.







---

Problem 2: Unfinished

Solution: To be determined

---
