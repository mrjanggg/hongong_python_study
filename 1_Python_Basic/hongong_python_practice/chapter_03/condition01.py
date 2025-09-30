# 입력을 받습니다.
number = input("정수 입력> ")

# 마지막 자리 숫자를 추출
last_character = number[-1]

# 숫자로 변환하기
last_number = int(last_character)

# 짝수 확인. 참고 : 코드 줄이 너무 길어질 땐 '\'를 사용하여 줄바꿈 코드를 입력합니다.
if last_number == 0 \
    or last_number == 2 \
    or last_number == 4 \
    or last_number == 6 \
    or last_number == 8:
        print("짝수 입니다")

# 홀수 확인. 참고 : 코드 줄이 너무 길어질 땐 '\'를 사용하여 줄바꿈 코드를 입력합니다.
if last_number == 1 \
    or last_number == 3 \
    or last_number == 5 \
    or last_number == 7 \
    or last_number == 9:
        print("홀수 입니다")