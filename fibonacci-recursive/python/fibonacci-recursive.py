#!/usr/bin/python3

import sys

def get_fib(fib_number):
    if fib_number == 1:
        return 0
    if fib_number == 2:
        return 1
    else:
        return get_fib(fib_number - 2) + get_fib(fib_number - 1)

print(get_fib(int(sys.argv[1])))
