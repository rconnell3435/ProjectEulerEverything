#Euler 6
#for some N find the square of the sum of all natural numbers up to N minus the sum of the squares of all the natural numbers up to N.


function sumsquaredifference(N)
    sum = 0
    for i = 2:N
        sum = sum + (i*i*(i-1))
    end
    return sum
end

s = parse(readline(STDIN))
for t = 1:s
    println(sumsquaredifference(parse(readline(STDIN))))
end
