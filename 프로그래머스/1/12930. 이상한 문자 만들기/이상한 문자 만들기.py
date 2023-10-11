def solution(s):
    
    words = s.split(" ")
    result = []
    
    for word in words:
        new_word = ''
        
        for idx, al in enumerate(word):
            if idx % 2 == 0:
                new_word += al.upper()
            else:
                new_word += al.lower()
        result.append(new_word)
    
    return " ".join(result)