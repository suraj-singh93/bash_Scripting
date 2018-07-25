#!/bin/bash
echo "URL: https://www.shellscript.sh/trap.html"
echo "There is a simple, useful idiom to make your 
bash scripts more robust - ensuring they always perform necessary
 cleanup operations, even when something unexpected goes wrong. 
 The secret sauce is a pseudo-signal provided by bash, called EXIT, 
 that you can trap; commands or functions trapped on it will 
 execute when the script exits for any reason. 
 Let's see how this works."

 finish(){
 	clear
 }

 #trap finish EXIT
 #trap finish 2
 trap finish 0

 for a in `seq 1 10`; do
 	sleep 1
 	echo $a
 done

