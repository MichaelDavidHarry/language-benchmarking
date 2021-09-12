#!/bin/bash

build_cpp()
{
    g++ $1.cpp -Og -o $1_Og.out
    g++ $1.cpp -O1 -o $1_O1.out
    g++ $1.cpp -O2 -o $1_O2.out
    g++ $1.cpp -O3 -o $1_O3.out
    g++ $1.cpp -Os -o $1_Os.out
    g++ $1.cpp -Ofast -o $1_Ofast.out
    strip *.out
}

build_csharp()
{
    dotnet publish -c Release --self-contained -r linux-x64
}

build_java()
{
    javac *.java
}

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
              build_cpp "$algorithm_dir"
              ;;
            c#)
              build_csharp "$algorithm_dir"
              ;;
            java)
              build_java "$algorithm_dir"
              ;;
        esac
        popd > /dev/null
    done
    popd > /dev/null
done
