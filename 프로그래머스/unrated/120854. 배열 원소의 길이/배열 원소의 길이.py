# strlist = ["We", "are", "the", "world!"]

def solution(strlist):
    # list
    answer = []
    # for문으로 각 단어의 길이를 append
    for i in strlist:
        answer.append(len(i))
        
    return answer