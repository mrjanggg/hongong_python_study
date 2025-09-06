# 변수를 선언합니다.
exmaple_list = ["요소 A", "요소 B", "요소 C"]

# 그냥 출력합니다.
print("# 단순 출력")
print(exmaple_list)
print()

# enumerate() 함수를 적용해 출력합니다.
print("# enumerate() 함수 적용 출력")
print(enumerate(exmaple_list))
print()

# list() 함수로 강제 변환해 출력합니다.
print("# list() 함수로 강제 변환 출력")
print(list(enumerate(exmaple_list)))
print()

# for 반복문과 enumerate() 함수 조합해서 사용하기
print("# 반복문과 조합하기")
for i, value in enumerate(exmaple_list):        #enumerate()함수를 사용하면 for와 in 사이에 반복 변수를 두 개 넣을 수 있습니다.
    print("{}번째 요소는 {}입니다.".format(i,value))