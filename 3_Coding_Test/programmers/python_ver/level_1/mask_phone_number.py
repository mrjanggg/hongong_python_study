# 문제: 프로그래머스 Lv.1 '핸드폰 번호 가리기'
# 설명: 프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
#       전화번호가 문자열 phone_number로 주어졌을 때, 
#       전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12948

# 풀이
# 1. 전화번호를 수정 가능한 list()함수를 활용하여 리스트(리스트1)로 만들고,
# 2. 다른 리스트 하나는 모두 *로 채운 뒤(리스트2),
# 3. 마지막 네 자리만, 리스트1의 값을 리스트2로 전달한 뒤,
# 4. 새로운 문자열에 join()함수를 활용하여 리스트2의 값을 문자열로 합친다.

def solution(phone_number):
    
    list_ph_num = list(phone_number)
    answer = []
    
    for i in range(len(phone_number)):
        answer.append('*')
    
    for i in range(-1, -5, -1):
        answer[i] = list_ph_num[i]
    
    str_answer = "".join(answer)
    return str_answer