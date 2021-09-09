#!/bin/bash

get_fib()
{
    if [ $1 -eq 1 ] || [ $1 -eq 2 ]
    then
        echo 1
        return
    fi

   f1=$(get_fib $(($1-2)))
   f2=$(get_fib $(($1-1)))

   echo $(($f1+$f2))
}

echo $(get_fib $1)
