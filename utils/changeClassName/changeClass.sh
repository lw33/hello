#!/bin/bash
#
path=$1
for i in `ls | grep -E [0-9]+\.java`; do
#echo ${i%_*}; 
    tmp=`echo $i | tr -cd "[0-9]"`
    sed -i "s/${i%.*}/P${tmp}_${i%_*}/g" $path/$i
    mv $path/$i $path/P${tmp}_${i%_*}.java
    echo "change $i to P${tmp}_${i%_*}.java success." 
done;
