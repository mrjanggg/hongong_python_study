# 문제: 프로그래머스 Lv.1 '평균 구하기'
# 설명: 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.  
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12944

# 풀이: len()함수를 이용하여 매개변수의 길이를 구한 후, sum()함수를 이용하여 매개변수의 값을 모두 더했다.
#       그 후, 모든 합을 길이로 나누면 평균이 구해지고 그 값을 반환하도록 했다.


def solution(arr):

    arr_len = len(arr)
    arr_sum = sum(arr)
        
    answer = arr_sum / arr_len
    
    return answer