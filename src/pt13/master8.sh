#!/bin/bash

j=b.html
for i in `seq 0 19`;
do
 read p;
 echo $i$j
 if [ -e $i$j ]
 then
  n=$( grep updated $i$j | wc -l )
  echo $n
  if [ $n -gt 499 ]
  then
   echo Yes.
   ./pull4 $i $p
  fi
 fi
done < nlist
