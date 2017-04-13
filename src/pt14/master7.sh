#!/bin/bash

i=0
j=b.html
k="forum2/"

while read p; do
 echo $p
 echo $i
 ./link2a $i < .$p > out
 cp out .$p
 if [ -e $k$i$j ]
 then
  echo EXISTS!
  echo $k$i$j
  ./link2b $i < .$p > out
  cp out .$p
 fi
 ((i++))
done < mlist 
