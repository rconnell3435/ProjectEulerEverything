#What is the greatest product of four adjacent numbers in the
#same direction (up, down, left, right, or diagonally) in a 20x20 grid?


function euler11(N,v,G)
    gp = 0
    product = 1
    L = [[-1,-1],[-1,0],[-1,1],[0,1]]
    for A in L
        for n = 1:N
            for m = 1:N
                if 1 <= n + (A[1]*(v-1)) <= N && 1 <= m + (A[2]*(v-1)) <= N
                    for k = 0:(v-1)
                        product = product * G[n + (A[1]*k)][m + (A[2]*k)]
                    end
                    if gp < product
                        gp = product
                    end
                    product = 1
                end
            end
        end
    end
    return gp
end
