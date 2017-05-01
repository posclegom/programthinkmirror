#!/bin/bash

i=0
j=b.html
l=c.html
k="forum3/"

while read p; do
 echo $p
 echo $i
 a="h1><a\x20href=\"..\/..\/forum3\/"
 b="a.html\">View\x20page\x20A\x20of\x20comments\x20for\x20this\x20blog\x20article.<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 if [ -e $k$i$j ]
 then
  echo EXISTS!
  echo $k$i$j
 a="h1><a\x20href=\"..\/..\/forum3\/"
 b="b.html\">View\x20page\x20B\x20of\x20comments\x20for\x20this\x20blog\x20article.<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 fi
 if [ -e $k$i$l ]
 then
  echo EXISTS C!
  echo $k$i$l
 a="h1><a\x20href=\"..\/..\/forum3\/"
 b="c.html\">View\x20page\x20C\x20of\x20comments\x20for\x20this\x20blog\x20article.<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 fi
 ((i++))
done < mlist 
