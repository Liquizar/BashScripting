#!/bin/bash

############################################
# Author: Amit Yadav
# Date : 14-02-2024
#
# This script is to output the node health
#
# Version: v1
############################################

set -ex		# -e - it exits the script when there is an error
		# -x - all the commands will be executed in debug mode

echo "Disk Space:"
df -h

echo "Memory:"
free -g

echo "CPU:"
nproc
