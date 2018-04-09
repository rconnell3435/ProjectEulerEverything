#The Longest Increasing Subsequence Problem
#as found here: https://www.hackerrank.com/challenges/longest-increasing-subsequent/problem

#Solution does not pass some hackerrank test cases due to timeout

function LIS(L)
    if L == []
        return 0
    end
    N = [1] #representative list
    g = 1
    j = 2
    while j <= length(L)
        m = 0
        while m != -1
            println(m)
            if L[N[g-m]] < L[j]
                if m == 0
                    push!(N,j)
                    g = g + 1
                elseif L[N[g+1-m]] >= L[j]
                    N[g+1-m] = j
                end
                m = -2
                j = j + 1
            end
            m = m + 1
            if m == g
                if L[j] < L[N[1]]
                    N[1] = j
                end
                j = j + 1
                m = -1
            end
        end
    end

    return length(N)
end
