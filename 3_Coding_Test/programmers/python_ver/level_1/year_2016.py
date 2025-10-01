# 문제: 프로그래머스 Lv.1 '2016년'
# 설명: 2016년 a월 b일이 무슨 요일인지 맞추는 문제입니다. 요일은 'SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT' 중 하나를 반환해야 합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12901

# 풀이:
# 1. Python의 datetime 모듈에서 date 클래스를 가져옵니다.
# 2. date(2016, a, b)를 사용하여 2016년 a월 b일의 날짜 객체를 생성합니다.
# 3. 날짜 객체의 weekday() 메소드를 호출하여 해당 날짜가 무슨 요일인지에 대한 정수값(0-월, 1-화, ...)을 얻습니다.
# 4. 이 정수값과 요일 문자열을 매핑해 둔 딕셔너리를 활용하여, 해당 요일의 문자열을 반환합니다.

from datetime import date

def solution(a, b):
    dict_weekday = {
        0: "MON",
        1: "TUE",
        2: "WED",
        3: "THU",
        4: "FRI",
        5: "SAT",
        6: "SUN"
    }
    
    today = date(2016, a, b)
    
    return dict_weekday[today.weekday()]