def solution(n):
    n = sorted([i for i in str(n)], key=lambda x: int(x), reverse=True)
    print(n)
    n = int(''.join(n))
    return n