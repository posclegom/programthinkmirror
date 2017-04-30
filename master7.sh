#!/bin/bash

i=0
j=b.html
l=c.html
k="forum2/"

while read p; do
 echo $p
 echo $i
 a="h1><a href=\"..\/..\/forum2\/"
 b="a.html\">View page A of comments for this blog article.<\/a><\/h1>\n<h1>"
 c="sed -i -e '0,/h1>/{s/h1>/$a$i$b/}' .$p"
 echo $c 
 eval $c
 if [ -e $k$i$j ]
 then
  echo EXISTS!
  echo $k$i$j
 a="h1><a href=\"..\/..\/forum2\/"
 b="b.html\">View page B of comments for this blog article.<\/a><\/h1>\n<h1>"
 c="sed -i -e '0,/h1>/{s/h1>/$a$i$b/}' .$p"
 echo $c 
 eval $c
 fi
 if [ -e $k$i$l ]
 then
  echo EXISTS C!
  echo $k$i$l
 a="h1><a href=\"..\/..\/forum2\/"
 b="c.html\">View page C of comments for this blog article.<\/a><\/h1>\n<h1>"
 c="sed -i -e '0,/h1>/{s/h1>/$a$i$b/}' .$p"
 echo $c 
 eval $c
 fi
 ((i++))
done < mlist 
