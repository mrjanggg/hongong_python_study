# 문제: 프로그래머스 Lv.1 '자연수 뒤집어 배열로 만들기'
# 설명: 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 
#       예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12932

# 풀이: 자연수 n을 문자열로 변환한 뒤, 길이를 구해 자릿수를 파악합니다.
#       range()와 for 반복문을 사용하여 자릿수만큼 반복하면서,
#       문자열 인덱싱(str_n[-(k+1)])을 이용해 맨 뒤 글자부터 거꾸로 접근합니다.
#       접근한 문자를 int()로 숫자로 바꾸어 빈 리스트 answer에 차례대로 추가합니다.


def solution(n):
       
    #변수값 초기 세팅
    answer = [ ]
    digit_number = 0
    
    # 숫자를 문자열로 변환
    str_n = str(n)
    
    # 자릿수 파악
    for i in str_n:
        digit_number += 1
    
    #빈 리스트에 역순으로 값 넣기
    for k in range(digit_number):
        answer.append(int(str_n[-(k+1)]))
    
    return answer