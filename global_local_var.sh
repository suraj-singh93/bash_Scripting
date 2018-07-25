#!/bin/bash
var="global variable"
function loc {
# local is reserved keyword
	local var="local variable"
	echo $var
}
loc
echo $var