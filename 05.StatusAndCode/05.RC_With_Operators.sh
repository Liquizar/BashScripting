#!/bin/bash

# Using && 

mkdir folder1 && cp -v 04.RC_Wait.sh folder1/04.RC_Wait.sh

# -v is for verbose
# cp is copy

echo $?

# Using ||

cp -v 04.RC_Wait.sh folder1/01.ExitStatus.sh || cp -v 04.RC_Wait.sh folder1/ExitStatus.sh
echo $?