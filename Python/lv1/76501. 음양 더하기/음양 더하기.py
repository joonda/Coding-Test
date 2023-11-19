def solution(absolutes, signs):
    idx = 0
    
    for i in range (len(absolutes)):
        if signs[i] == True:
            idx += absolutes[i]
        else:
            idx -= absolutes[i]
    
    return idx