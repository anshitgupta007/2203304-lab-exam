#!/bin/bash
a=$1 #file name
out=${a:0:2}_$2_$3 # name of the output file
echo $1,$2,$3, $(wc -l $1)  >> $out.csv #saves filename, field name ,field value ,number of lines in the output file.
less $1 | head -1  >> $out.csv # saves column names in output file
grep -iw $3 $1 >> $out.csv #prints lines which has field name as field value


