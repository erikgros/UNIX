#!/bin/bash
## replacing "bubble_rising-1-0xxx.dat" by "bubble_rising-1-0$NUM.dat" in Vor.txt for $NUM= $first : 100 : $last
echo 'Enter first time:'
read first
echo 'Enter last time:'
read last

for NUM in `seq $first 100 $last`
do
 sed "/^[rd]/ s/bubble_rising-1-0xxx.dat/bubble_rising-1-0$NUM.dat/" Vor.txt > velocityAt.txt
done
