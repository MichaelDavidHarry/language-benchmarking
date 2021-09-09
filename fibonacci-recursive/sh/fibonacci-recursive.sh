#!/bin/sh

get_fib()
{
    if [ $1 -eq 1 ] || [ $1 -eq 2 ]
    then
        echo 1
        return
    fi

   echo $(( $(get_fib $(($1-2))) + $(get_fib $(($1-1))) ))
}

echo $(get_fib $1)
