#!/bin/bash

i=0
while read p; do
 echo $p
 echo $i
 a="sed -i -e 's/https:\/\/program-think.blogspot.com/..\/../g'"
 eval "$a .$p"
 ((i++))
done < mlist 
