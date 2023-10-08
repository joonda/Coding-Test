def solution(x):
    
    number = str(x)
    sum_x = 0
    for i in number:
        sum_x += int(i)
    
    if x % sum_x == 0:
        answer = True
    else:
        answer = False
    
    return answer
