import pandas as pd
import newcomer_help_function as help_fun


def write_sql(intro, data):
    answer = intro
    for i in range(len(data)):
        answer += "("
        for j in range(len(data[0])):
            if isinstance(data[i][j], str):
                answer += "'"
            answer += str(data[i][j])
            if isinstance(data[i][j], str):
                answer += "'"
            answer += ", "
        answer = answer[:-2] + "),\n"
    answer = answer[:-2] + ";"
    return answer


def make_user_table(num=1):
    list_user_id = help_fun.make_user_id(num)
    list_password, list_password_encode = help_fun.make_password(num)
    list_name = help_fun.make_name(num)
    list_address = help_fun.make_address(num)
    list_phone = help_fun.make_phone(num)
    list_deleted = [0 for _ in range(num)]
    list_email = help_fun.make_email(list_user_id)
    list_resident = help_fun.make_resident_number(num)
    list_role = ["0" for _ in range(num)]

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
    user_info = [list_name, list_password]
    return data, user_info


def make_car_table():
    data = help_fun.make_car()
    return data


def write_txt(user_info):
    answer = ""
    for index in range(len(user_info[0])):
        answer += user_info[0][index] + ", " + user_info[1][index] + "\n"
    return answer


if __name__ == "__main__":
    INTRO = "SET FOREIGN_KEY_CHECKS = 0;\n" \
            "TRUNCATE {0};\n" \
            "SET FOREIGN_KEY_CHECKS = 1;\n" \
            "INSERT INTO {0} ({1}) \nVALUES \n"

    #"""
    user_data, user_id_pw_info = make_user_table(200)
    with open("newcomer_spring_sql/spring_user_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("user",
                                          "user_id,crd,name,address,phone,deleted,email,resident_number,role"),
                             user_data))
    with open("newcomer_spring_sql/spring_user_info.txt", "w") as file:
        file.write(write_txt(user_id_pw_info))

    #"""

    """
    car_data = make_car_table()
    with open("newcomer_spring_sql/spring_car_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("car",
                                          "code,model,series,generation,price,fuel_type"),
                             car_data))
    """



