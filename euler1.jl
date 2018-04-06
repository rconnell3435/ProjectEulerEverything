A = [3,5]

function euler1(blist,N)
    B = [0]
    c = true
    for n = 1:(prod(blist)-1)
        for s in blist
            if n%s == 0 && !(n in B)
                push!(B,n)
            end
        end
    end
    r = N % prod(blist)
    q = convert(Int,(N - r)/prod(blist))

    summ = 0

    for s in B
        if s < r
            summ = summ + s + N - r
        end
    end

    if q%2 == 0
        p = q >>> 1
        summ = summ + q*sum(B) + (q-1)*prod(blist)*length(B)*p
    else
        p = (q-1) >>> 1
        summ = summ + q*sum(B) + q*prod(blist)*length(B)*p
    end

    return summ
end

q = parse(readline(STDIN))

for n = 1:q
    m = parse(readline(STDIN))
    println(convert(Int,euler1(A,m)))
end
