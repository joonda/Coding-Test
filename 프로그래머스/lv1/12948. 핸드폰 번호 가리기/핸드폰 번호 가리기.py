def solution(phone_number):
    
    hidden = '*' * (len(phone_number)-4)
    
    visible = phone_number[-4:]
    
    result = hidden+visible
    
    return result