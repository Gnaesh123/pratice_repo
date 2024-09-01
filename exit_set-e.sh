#!/bin/bash

# set -e is used ro exit the execution of code if exit status is not equal to zero
set -e
ls -lrt case.sh
echo "case.sh is exits"
ls -lrt tett.txt
# Here the excecution of code is stopped because exit code is not equal to zero`
echo "tett.txt is not exits"
cd /root
