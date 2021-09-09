#!/bin/bash

function get_fib()
{
    if [ "$1" -eq 1 ]
    then
        echo 0
        return
    fi

    if [ "$1" -eq 2 ]
    then
        echo 1
        return
    fi

   local f1=$(get_fib $(($1-2)))
   local f2=$(get_fib $(($1-1)))

   echo $(($f1+$f2))
}

echo $(get_fib $1)
