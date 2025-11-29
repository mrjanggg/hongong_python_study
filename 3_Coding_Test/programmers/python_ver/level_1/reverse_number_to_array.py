# 문제: 프로그래머스 lv.1 '자연수 뒤집어 배열로 만들기'
# 설명: 자연수 n을 입력받아, 각 자릿수를 뒤집은 순서대로 배열에 담아 반환해야 한다.
#       예를 들어, n=12345 이면 [5, 4, 3, 2, 1]을 반환한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12932

# 풀이:
# 1. 자연수 n을 인덱싱이 가능한 문자열(str_n)로 변환한다.
# 2. 결과 리스트(answer)를 생성한다.
# 3. 문자열의 가장 마지막 인덱스(len(str_n) - 1)부터 0까지 역순으로 순회한다.
# 4. 각 자릿수(문자)를 정수형(int)으로 변환하여 리스트에 추가(append)한다.

def solution(n):
    	
    #변수값 초기 세팅
    answer = [ ]
    
    # 숫자를 문자열로 변환
    str_n = str(n)
    
    # 문자열로 된 배열의 역순을 answer에 저장.
    for i in range(len(str_n) - 1, 0 - 1, -1):
        answer.append(int(str_n[i]))

    return answer