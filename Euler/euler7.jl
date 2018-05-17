#euler 7
#Given N, find the Nth prime

function NthPrime(N)
    L = []
    isprime = true
    size = 0
    m = 1
    while size < N
        m = m + 1
        for s in L
            if s > sqrt(m)
                break
            end
            if m%s == 0
                isprime = false
                break
            end
        end
        if isprime == true
            push!(L,m)
            size = size + 1
        end
        isprime = true
    end
    return L[size]
end

t = parse(readline(STDIN))
for q = 1:t
    println(NthPrime(parse(readline(STDIN))))
end
