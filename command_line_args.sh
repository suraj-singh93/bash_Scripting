#!/bin/bash

echo "Number of command line arguments passed: " $#
echo "all command line arguments: " $@

echo "store all arguments passed in array"
args=$@

echo ${args[0]} ${args[1]}

echo ${args[0]}

