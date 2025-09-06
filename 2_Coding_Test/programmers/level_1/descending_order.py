# 문제: 프로그래머스 Lv.1 '정수 내림차순으로 배치하기'
# 설명: 함수 solution은 정수 n을 매개변수로 입력받습니다. 
#       n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 
#       예를들어 n이 118372면 873211을 리턴하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12933

# 풀이: 매개변수 정수를 문자열로 바꾼후, 문자열을 다시 리스트로 변환한다.
#       그 후, 리스트를 sorted()함수를 활용하여 내림차순으로 정렬한다.
#       그 다음, 리스트를 문자열로 바꿀 때, join()함수를 활용하여 해당 원소만 문자열로 바꾼후,
#       마지막으로, 문자열을 int()함수를 사용하여 다시 숫자로 바꾸고 return한다.


def solution(n):
    list_number = list(str(n))
    
    sorted_list = sorted(list_number, reverse = True)
    
    # sorted_list의 모든 원소를 ""(공백 없이) 기준으로 합쳐서 하나의 문자열로 만듭니다.
    combined_str = "".join(sorted_list)
    
    # 합쳐진 문자열을 최종적으로 숫자로 변환합니다.
    answer = int(combined_str)
    
    return answer