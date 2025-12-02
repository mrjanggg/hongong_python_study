def solution(n, m):
    
    while m % n != 0:
        remainder = m % n 
        m, n = n, remainder
    
    gcd = m // n

    return gcd