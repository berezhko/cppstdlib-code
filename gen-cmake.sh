#!/bin/bash

find -name CMakeLists.txt | xargs rm

echo "cmake_minimum_required(VERSION 2.8)" >>CMakeLists.txt

for j in *
do
    if [ -d $j ]
    then
        cd $j
        (
            echo "cmake_minimum_required(VERSION 2.8)"
            echo "add_definitions(-std=c++11)"
            for i in *cpp
            do
                echo "add_executable($j-`basename $i .cpp` $i)"
            done
        ) >>CMakeLists.txt
        cd ..

        echo "add_subdirectory($j)">>CMakeLists.txt
    fi
done
