#!/bin/bash

# help -m declare
# NAME
#     declare - Set variable values and attributes.

# SYNOPSIS
#     declare [-aAfFgilnrtux] [-p] [name[=value] ...]

# DESCRIPTION
#     Set variable values and attributes.

#     Declare variables and give them attributes.  If no NAMEs are given,
#     display the attributes and values of all variables.

#     Options:
#       -f    restrict action or display to function names and definitions
#       -F    restrict display to function names only (plus line number and
#         source file when debugging)
#       -g    create global variables when used in a shell function; otherwise
#         ignored
#       -p    display the attributes and value of each NAME

#     Options which set attributes:
#       -a    to make NAMEs indexed arrays (if supported)
#       -A    to make NAMEs associative arrays (if supported)
#       -i    to make NAMEs have the `integer' attribute
#       -l    to convert NAMEs to lower case on assignment
#       -n    make NAME a reference to the variable named by its value
#       -r    to make NAMEs readonly
#       -t    to make NAMEs have the `trace' attribute
#       -u    to convert NAMEs to upper case on assignment
#       -x    to make NAMEs export

#     Using `+' instead of `-' turns off the given attribute.

#     Variables with the integer attribute have arithmetic evaluation (see
#     the `let' command) performed when the variable is assigned a value.

#     When used in a function, `declare' makes NAMEs local, as with the `local'
#     command.  The `-g' option suppresses this behavior.

#     Exit Status:
#     Returns success unless an invalid option is supplied or a variable
#     assignment error occurs.
declare -a arr

# to evalute arthimetic ops
let count=0
let count1=0
let count1=$count1+1
echo $count1

#link file descriptor 10 with stdin 0
exec 10<&0
#stdin replace with file descriptor
exec < $1

while read line; do
	arr[$count]=line
	let count++;
done

echo "lines in file: ${#arr[@]}"


