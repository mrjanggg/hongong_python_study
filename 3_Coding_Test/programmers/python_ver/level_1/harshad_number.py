# 문제: 프로그래머스 Lv.1 '하샤드 수'
# 설명: 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 
#       예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 
#       자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12947

# 풀이:
# 1. 자릿수의 합을 누적할 변수(sum_list)를 0으로 초기화한다.
# 2. 정수 x를 문자열 str(x)로 변환하여 각 자릿수(문자)를 한 글자씩 for문으로 순회한다.
#    (문자열은 반복 가능한 객체이므로 별도의 list 변환 없이 바로 순회 가능)
# 3. 각 문자 i를 정수형(int)으로 변환하여 sum_list에 누적 합산한다.
# 4. 원래의 수 x가 자릿수 합(sum_list)으로 나누어떨어지는지 확인하여,
#    나머지가 0이면 True, 아니면 False를 반환한다. (비교 연산식 자체를 바로 반환)

def solution(x):
    sum_list = 0
    
    for i in str(x):
        sum_list += int(i)
    
    return (x % sum_list) == 0