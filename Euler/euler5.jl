#What is the smallest positive number that is evenly
#divisible(divisible with no remainder) 
#by all of the numbers from  to ?



function euler5(N)
    A = collect(1:N)
    product = 1
    for k = 2:N
        product = product * A[k]
        for m = k+1:N
            if A[m]%A[k]==0
                A[m] = A[m]/A[k]
            end
        end
    end
    return product
end
