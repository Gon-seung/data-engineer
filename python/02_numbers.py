import math


def find_pi_nth_digit(n=1):
    """
    Enter a number and have the program generate PI up to that many decimal places.
    Keep a limit to how far the program will go.
    """
    answer = math.pi
    print(answer)
    print("pi value is : ", math.pi)
    print(n, "th digit of pi :", answer)
    return answer


def find_e_nth_digit(n=1):
    """
    Just like the previous problem, but with e instead of PI.
    Enter a number and have the program generate e up to that many decimal places.
    Keep a limit to how far the program will go.
    """
    answer = str(math.e)[n+2]
    print("e value is : ", math.e)
    print(n, "th digit of e :", answer)
    return answer


def fibonacci(n=1):
    # Enter a number and have the program generate the Fibonacci sequence to that number or to the Nth number.
    pass
    answer = []
    if n == 1:
        return [1]
    elif n == 2:
        return [1, 1]
    answer = [1,1]
    for i in range(3, n):
        new_value = answer[-1] + answer[-2]
        answer.append(new_value)


def prime_factorization(n=1):
    """
    find all Prime Factors (if there are any) and display them
    :return:
    """
    answer = 0
    a = 1+1 * 1


def next_prime_number():
    1


if __name__ == "__main__":
    # find_pi_nth_digit(20)
    # find_e_nth_digit(3)
    a = fibonacci(5)
    for i in a:
        print(i)
