import random
import newcomer_help_function as help_fun


def write_sql(intro, data):
    answer = intro
    for i in range(len(data)):
        answer += "("
        for j in range(len(data[0])):
            if isinstance(data[i][j], str) and data[i][j] != "NULL":
                answer += "'"
            answer += str(data[i][j])
            if isinstance(data[i][j], str) and data[i][j] != "NULL":
                answer += "'"
            answer += ", "
        answer = answer[:-2] + "),\n"
    answer = answer[:-2] + ";"
    return answer


def write_txt(user_info):
    answer = ""
    for index in range(len(user_info[0])):
        answer += user_info[0][index] + ", " + user_info[1][index] + ", " + user_info[2][index] + "\n"
    return answer


def make_user_table(num=200):
    list_user_id = help_fun.make_user_id(num)
    list_password, list_password_encode = help_fun.make_password(num)
    list_name = help_fun.make_name(num)
    list_address = help_fun.make_address(num)
    list_phone = help_fun.make_phone(num)
    list_deleted = [0 for _ in range(num)]
    list_email = help_fun.make_email(list_user_id)
    list_resident = help_fun.make_resident_number(num)
    list_role = ["USER" for _ in range(num)]

    data = []
    for i in range(num):
        data.append([
            list_user_id[i],
            list_password_encode[i],
            list_name[i],
            list_address[i],
            list_phone[i],
            list_deleted[i],
            list_email[i],
            list_resident[i],
            list_role[i]
        ])
    user_info = [list_user_id, list_name, list_password]
    return data, user_info


def make_car_table():
    data = help_fun.make_car()
    return data


def make_order_car_table(num=300, customer_num=200, car_num=10):
    car_prices = {1: 5001, 2: 5200, 3: 1375, 4: 3867, 5: 3418, 6: 3212, 7: 2596, 8: 2144, 9: 2474, 10: 3738}

    list_address = help_fun.make_address(num)
    list_status, list_times, list_refund = help_fun.make_order_time_and_release_time(num)
    answer = []
    for i in range(num):
        car_id = random.randint(1, car_num)
        status = list_status[i]  # 주문 상태, 0 배송중, 1 배송완료, 2 환불
        answer.append([
            random.randint(1, customer_num),
            car_id,
            list_address[i],
            "good",
            status,  # 주문 상태
            car_prices[car_id] + random.randint(0, 2000)  # price
        ])
        answer[-1].extend(list_times[i])
        answer[-1].append(list_refund[i])
    return answer


def make_order_option_table(order_car_data):
    answer = []
    car_to_option_dict = {
        1: [1, 2, 3, 4, 5, 6, 7, 8, 9],
        2: [1, 3, 9, 10, 11, 12, 13, 14, 15, 16],
        3: [],
        4: [3, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27],
        5: [28, 29, 30, 31, 32, 33, 34],
        6: [35, 36, 37, 38, 39, 40],
        7: [41, 42, 43, 44],
        8: [45, 46, 47, 48, 49],
        9: [50, 51, 52],
        10: [53, 54, 55, 56]
    }
    for i in range(len(order_car_data)):
        order_num = i + 1
        car_num = order_car_data[i][1]
        options = car_to_option_dict[car_num]
        for option in random.sample(options, k=random.randint(0, len(options))):
            answer.append([order_num, option, car_num])
    return answer


if __name__ == "__main__":
    INTRO = "SET FOREIGN_KEY_CHECKS = 0;\n" \
            "TRUNCATE {0};\n" \
            "SET FOREIGN_KEY_CHECKS = 1;\n" \
            "INSERT INTO {0} ({1}) \nVALUES \n"

    """
    user_data, user_id_pw_info = make_user_table(200)
    with open("newcomer_spring_sql/spring_user_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("user",
                                          "user_id,crd,name,address,phone,deleted,email,resident_number,role"),
                             user_data))
    with open("newcomer_spring_sql/spring_user_info.txt", "w") as file:
        file.write(write_txt(user_id_pw_info))
    """

    #"""
    order_car_data = make_order_car_table(num=300, customer_num=200, car_num=10)
    with open("newcomer_spring_sql/spring_order_car_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("order_car",
                                          "customer_id,car_id,address,requestmsg,"
                                          "status,price,order_time,order_completed_time,"
                                          "produce_start_time,release_time,refund_time"),
                             order_car_data))
    #"""

    #"""
    order_option_data = make_order_option_table(order_car_data)
    with open("newcomer_spring_sql/spring_order_option_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("order_option",
                                          "order_id,option_id,car_id"),
                             order_option_data))
    #"""
