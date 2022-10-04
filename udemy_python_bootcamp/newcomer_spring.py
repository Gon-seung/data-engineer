import pandas as pd
import newcomer_help_function as help_fun


def make_user_table(insert_format, num=1):
    column_info = "user_id,crd,name,address,phone,deleted,email,resident_number,role"

    answer = insert_format.format("User", column_info)
    user_id = help_fun.make_user_id(num)
    data = [user_id,
            help_fun.make_password(num),
            help_fun.make_name(num),
            help_fun.make_address(num),
            help_fun.make_phone(num),
            [0 for _ in range(num)],    # deleted
            help_fun.make_email(user_id),
            help_fun.make_resident_number(num),
            ["0" for _ in range(num)]   # role
            ]

    for i in range(num):
        answer += "("
        for j in range(len(data)):
            if isinstance(data[j][i], str):
                answer += "'"
            answer += str(data[j][i])
            if isinstance(data[j][i], str):
                answer += "'"
            answer += ", "
        answer = answer[:-2] + "),\n"
    answer = answer[:-2] + ";"
    return answer


if __name__ == "__main__":
    INSERT_FORMAT = "INSERT INTO {} ({}) \nVALUES \n"
    with open("newcomer_spring_sql/spring_user_data.sql", "w") as file:
        file.write("SET FOREIGN_KEY_CHECKS = 0;\n")
        file.write("TRUNCATE User;\n")
        file.write("SET FOREIGN_KEY_CHECKS = 1;\n")
        file.write(make_user_table(INSERT_FORMAT, 200))




