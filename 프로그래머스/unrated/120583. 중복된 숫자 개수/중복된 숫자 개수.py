def solution(array, n):
    # answer 변수 지정
    answer = 0
    # for문으로 array를 불러온다
    for i in array:
        # 만약 i와 n이 같다면 answer에 1를 더한다.
        if i == n:
            answer += 1
    
    return answer