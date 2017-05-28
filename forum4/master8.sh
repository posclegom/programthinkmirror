#!/bin/bash

i=0
while read p; do
 read q <&3
 read r <&4
 if [ "$q" -ne "$r" ]
 then
 if [ "$q" -gt 1000 ]
 then
  echo $p
  a="wget --no-check-certificate -O"
  b="c.xml https://program-think.blogspot.com/feeds/"
  c="/comments/default?max-results=999&start-index=1000"
  d="$a $i$b$p$c"
  $d
 fi
 fi 
 ((i++))
done <nlist 3<newww 4<olddd
