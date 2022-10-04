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
    list_password = help_fun.make_password(num)
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
            list_password[i],
            list_name[i],
            list_address[i],
            list_phone[i],
            list_deleted[i],
            list_email[i],
            list_resident[i],
            list_role[i]
        ])
    return data


def make_car_table():
    data = help_fun.make_car()
    return data


if __name__ == "__main__":
    INTRO = "SET FOREIGN_KEY_CHECKS = 0;\n" \
            "TRUNCATE Car;\n" \
            "SET FOREIGN_KEY_CHECKS = 1;\n" \
            "INSERT INTO {} ({}) \nVALUES \n"

    """
    user_data = make_user_table(200)
    with open("newcomer_spring_sql/spring_user_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("User",
                                          "user_id,crd,name,address,phone,deleted,email,resident_number,role"),
                             user_data))
    """

    car_data = make_car_table()
    with open("newcomer_spring_sql/spring_car_data.sql", "w") as file:
        file.write(write_sql(INTRO.format("Car",
                                          "code,model,series,generation,price,fuel_type"),
                             car_data))




