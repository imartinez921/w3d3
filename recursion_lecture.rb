#RECURSION EXAMPLES

def rec_sum(n)
    return 0 if n == 0
    return 1 if n == 1

    n + rec_sum(n-1)
end

p rec_sum(3)