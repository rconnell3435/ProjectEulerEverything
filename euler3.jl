#Project Euler 3

function isprime(n)

    if n == 1
        return False
    end

    for i = 2:floor(Int,sqrt(n))
        if(n%i == 0)
            return false
        end
    end

    return true
end


function largestprime(n)
    if isprime(n)
        return n
    end

    for i = 2:floor(Int,sqrt(n))
        if isprime(i) && n%i == 0
            return convert(Int,max(i,largestprime(n/i)))
        end
    end
end

q = parse(readline(STDIN))
for x = 1:q
    n = parse(readline(STDIN))
    println(largestprime(n))
end
