#euler 7
#Given N, find the Nth prime

function NthPrime(N,L)
    isprime = true
    K = L
    size = length(L)
    if size == 0
        m = 1
    else
        m = L[end]
    end
    while size < N
        m = m + 1
        for s in K
            if s > sqrt(m)
                break
            end
            if m%s == 0
                isprime = false
                break
            end
        end
        if isprime == true
            push!(K,m)
            size = size + 1
        end
        isprime = true
    end
    return K
end

M = []
t = parse(readline(STDIN))
for q = 1:t
    q = parse(readline(STDIN))
    M = NthPrime(q,M)
    println(M[q])
end
