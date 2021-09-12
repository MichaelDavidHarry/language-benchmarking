#!/bin/bash

clean_dir_name()
{
    dir=${1%*/}
    echo "${dir##*/}"
}

for algorithm_dir in ./*/
do
    algorithm_dir=$(clean_dir_name $algorithm_dir)
    pushd $algorithm_dir > /dev/null
    for implementation_dir in ./*/
    do
        implementation_dir=$(clean_dir_name $implementation_dir)
        pushd $implementation_dir > /dev/null
        case "$implementation_dir" in
            c++)
              rm -rf *.out
              ;;
            c#)
              rm -rf bin obj
              ;;
            java)
              rm -rf *.class
              ;;
        esac
        popd > /dev/null
    done
    popd > /dev/null
done
