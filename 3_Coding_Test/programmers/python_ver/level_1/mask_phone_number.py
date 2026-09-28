# 문제: 프로그래머스 lv.1 '핸드폰 번호 가리기'
# 설명: 전화번호 문자열(phone_number)의 뒷 4자리를 제외한 나머지 숫자를 모두 '*'로 가린 문자열을 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12948

# 풀이:
# 1. 글자를 직접 바꿀 수 없는 문자열(phone_number)을 수정 가능한 리스트(phone_num_list)로 변환한다.
# 2. 뒷자리 4개를 건너뛰고, 뒤에서 5번째 칸(-5)부터 맨 앞 글자까지 거꾸로 하나씩(-1) 찾아간다.
# 3. 찾아간 각 자리에 원래 있던 숫자 대신 별표('*')를 덮어씌운다.
#    (만약 전화번호가 딱 4자리라면 이 반복문은 시작되지 않고 바로 통과한다.)
# 4. 수정이 끝난 리스트의 글자들을 빈틈없이 이어 붙여("".join) 하나의 완성된 문자열로 돌려준다.

def solution(phone_number):
    
    phone_num_list = list(phone_number)
    
    for i in range(-5, -len(phone_num_list) - 1, -1):
        phone_num_list[i] = '*'
    
    return "".join(phone_num_list)

# 제미나이(AI)의 풀이
# def solution(phone_number):
#     # 뒤 4자리를 제외한 길이만큼 '*'을 만들고, 뒷자리 4자리를 그대로 이어 붙임
#     return '*' * (len(phone_number) - 4) + phone_number[-4:]