#!/bin/bash

#####################################################
# Author: Amit Yadav
# Date: 14-02-2024
#
# This script is to print all the numbers between
# 1 to 100 that are divisible by 3 and 5 but not 15.
#
#####################################################

set -e

for i in {1..100}; do
    if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ]; then
        echo $i
    fi
done
