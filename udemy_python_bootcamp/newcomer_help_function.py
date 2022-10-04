import string
import random


def make_user_id(n=100):
    # 5~len_of_id 사이의 길이를 가지는 id를 만들고 기존 id랑 겹치지 않으면 append
    len_of_id = 10
    answer = set()
    while len(answer) < n:
        new_id = ""
        for _ in range(random.randint(5, len_of_id)):
            new_id += random.choice(string.ascii_lowercase)
        if new_id not in answer:
            answer.add(new_id)
    answer = list(answer)
    random.shuffle(list(answer))
    return answer


def make_password(n=100):
    # 정해진 길이 만큼의 password를 생성하는 함수
    len_of_password = 10
    answer = []
    for _ in range(n):
        new_password = ""
        for _ in range(len_of_password):
            new_password += random.choice(string.ascii_lowercase)
        answer.append(new_password)
    return answer


def make_name(n=100):
    # 성 list와 이름 list 중 각각 하나를 뽑아 name 생성
    first_name = "김이박최정강조윤장임한오서신권황안송류전홍고문양손배조백허유남심노정하곽성차주우구신임라전민유진지엄채원천방공강현"
    first_name = list(set(first_name))
    first_name.append("제갈")
    middle_name = "민준,서준,도윤,예준,시우,하준,주원,지호,지후,준우,준서,건우,도현,현우,지훈,우진,선우,서진,유준,연우,"
    middle_name += "서연,서윤,지우,서현,하은,하윤,민서,지유,윤서,지민,채원,수아,지아,지윤,은서,다은,예은,수빈,지안,소율"
    middle_name = middle_name.split(",")

    answer = []
    for _ in range(n):
        answer.append(random.choice(first_name) + random.choice(middle_name))
    return answer


def make_phone(n=100):
    # 랜덤한 전화번호 생성. 010를 제외한 번호는 생략함.
    answer = set()
    while len(answer) < n:
        new_phone = "010"
        for _ in range(8):
            new_phone += random.choice(string.digits)
        answer.add(new_phone)
    answer = list(answer)
    random.shuffle(list(answer))
    return answer


def make_address(n=100):
    district = "강남구,강동구,강북구,강서구,관악구,광진구,구로구,금천구,노원구,도봉구,동대문구,동작구,마포구,서대문구,서초구,성동구," \
               "성북구,송파구,양천구,영등포구,용산구,은평구,종로구,중구,중랑구"
    district = district.split(",")
    answer = []
    for i in range(n):
        answer.append("서울특별시 " + random.choice(district))
    return answer


def make_email(input_id):
    answer = []
    for i in input_id:
        answer.append(i + "@hyundai.com")
    return answer


def make_resident_number(n=100):
    # 윤년, 31일 생각 안함
    answer = set()
    while len(answer) < n:
        year = str(random.randint(1, 99))
        if len(year) == 1:
            year = "0" + year

        month = str(random.randint(1, 12))
        if len(month) == 1:
            month = "0" + month

        day = str(random.randint(1, 30))
        if len(day) == 1:
            day = "0" + day

        new_resident = year + month + day
        new_resident += random.choice(["1", "2"])
        for _ in range(6):
            new_resident += random.choice(string.digits)
        answer.add(new_resident)
    answer = list(answer)
    random.shuffle(list(answer))
    return answer


def make_car(n=100):
    # code, model, series, generation, price, fuel_type
    code = random.choice(string.ascii_uppercase) + random.choice(string.ascii_uppercase)
    models = "POMELO,FRENZY,PITCH,CHIVE,TRIBE,CASTANET,"
    series = "세단,쿠페,SUV,MPV,경차"
    fuel_type = "가솔린,디젤,LPG,CNG,전기".split(",")
    answer = []
    for model in models.split(","):
        for i in series:
            for generation in range(random.randint(1, 4)):
                answer.append([model, i, generation, random.randint(3000, 6000), random.choice(fuel_type)])
    return answer


if __name__ == "__main__":
    user_ids = make_user_id(10)
    print(user_ids)
    print(make_password(10))
    print(make_name(10))
    print(make_phone(10))
    print(make_address(10))
    print(make_email(user_ids))
    print(make_resident_number(10))
    print(make_car(10))
