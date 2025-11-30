# 문제: 프로그래머스 lv.1 '핸드폰 번호 가리기'
# 설명: 전화번호 문자열(phone_number)의 뒷 4자리를 제외한 나머지 숫자를 모두 '*'로 가린 문자열을 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12948

# 풀이:
# 1. 전화번호의 길이와 마스킹된 개수를 세는 카운트 변수를 활용하여 순회한다.
# 2. 반복문에서 현재 위치(i)가 뒤에서 4번째 자리 이내인지 확인한다.
# 3. 만약 뒤에서 4자리가 넘는 위치라면 '*'를 리스트에 추가하고 카운트를 증가시켜 마스킹한다.
# 4. 뒤에서 4자리가 되는 위치부터는 원본 숫자를 리스트에 추가한다.
# 5. 최종적으로 리스트의 원소들을 하나의 문자열로 합쳐(join) 반환한다.

def solution(phone_number):
    
    answer = []
    count = 0
    
    for i in range(0, len(phone_number), 1):
        if (len(phone_number) - count) > 4:
            answer.append('*')
            count += 1
        else:
            answer.append(phone_number[i])
            
    return "".join(answer)