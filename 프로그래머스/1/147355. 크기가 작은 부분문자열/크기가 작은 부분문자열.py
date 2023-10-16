def solution(t, p):
    answer = 0
    length = len(p)
    for i in range(len(t)):
        middle = t[i:i+length]
        if len(middle) == length:
            if int(middle) <= int(p):
                answer += 1
    return answer