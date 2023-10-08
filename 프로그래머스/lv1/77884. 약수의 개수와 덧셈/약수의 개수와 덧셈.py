def solution(left, right):

    summary = 0
    for i in range(left, (right+1)):
        answer = []
        for v in range(1, i+1):
            if i % v == 0:
                answer.append(v)
        if len(answer) % 2 == 0:
            summary += i
        else:
            summary -= i

    return summary