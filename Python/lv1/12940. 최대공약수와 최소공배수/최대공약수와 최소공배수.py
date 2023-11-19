def solution(n, m):
    for i in range(min(n,m), 0, -1):
        if n%i ==0 and m%i ==0:
            gcd = i
            break
    lcm = (n*m) // gcd
    return [gcd, lcm]