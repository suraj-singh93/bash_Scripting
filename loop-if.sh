#!/bin/bash
var='test_dir'

if [ -d $var ]; then
	echo "directory exist $var"
else
	echo "not found"
fi

a=10
if [ a > 10 ]; then
	echo "greater than 10"
else
	echo "equal or less"
fi