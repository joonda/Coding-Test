def solution(n):
    n = n**(0.5)
    
    if n % 1 == 0:
        return (n+1) ** 2
    else:
        return -1