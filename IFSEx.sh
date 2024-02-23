#Example to use IFS 

#!/bin/bash

string="apple,banana,cherry"
IFS=',' read -ra fruits <<< "$string"

for fruit in "${fruits[@]}"; do
    echo "$fruit"
done
