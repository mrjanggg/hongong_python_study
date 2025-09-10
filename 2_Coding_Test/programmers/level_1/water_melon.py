# 문제: 프로그래머스 Lv.1 '수박수박수박수박수박수'
# 설명: 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요.
#       예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12922

# 풀이
# 1. 반복문 생성: n번 반복하는 for문을 만듭니다.
# 2. 홀짝 판별: 반복문의 현재 인덱스 i가 짝수인지 홀수인지 i % 2를 통해 판별합니다.
# 3. '수' 추가: i가 짝수일 경우('수'의 차례), '수'를 결과 리스트에 추가합니다.
# 4. '박' 추가: i가 홀수일 경우('박'의 차례), '박'을 결과 리스트에 추가합니다.
# 5. 문자열 결합: 반복문이 끝난 후, 결과 리스트를 "".join() 함수를 사용하여 하나의 문자열로 결합하고 반환합니다.

def solution(n):
    water_melon = []
    
    for i in range(n):
        if i % 2 == 0:
            water_melon.append("수")
        else:
            water_melon.append("박")
    
    answer = "".join(water_melon)
    return answer