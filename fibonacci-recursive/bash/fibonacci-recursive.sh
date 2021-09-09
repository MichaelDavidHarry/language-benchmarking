#!/bin/bash

function get_fib()
{
    local result=""
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

   local fibNumberMinus2=$1
   let fibNumberMinus2=fibNumberMinus2-2
   local fibNumberMinus1=$1
   let fibNumberMinus1=fibNumberMinus1-1

   local f1=`get_fib $fibNumberMinus2`
   local f2=`get_fib $fibNumberMinus1`

   local result=$f1
   let result=result+f2
   echo $result
}

echo $(get_fib $1)
