#!/bin/bash

j=a.html
for i in `seq 0 19`;
do
 read p;
 echo $i$j
 n=$( grep updated $i$j | wc -l )
 echo $n
 if [ $n -gt 499 ]
 then
  echo Yes.
  ./pull3 $i $p
 fi
done < nlist
