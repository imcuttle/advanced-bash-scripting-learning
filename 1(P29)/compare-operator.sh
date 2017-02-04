#!/usr/bin/env bash

files=(*.sh)

file1=${files[1]}
file2=${files[2]}

if [ $file1 -ot $file2 ]
then #      ^
  echo "File $file1 is older than $file2."
fi

a=123
b=123

if [ "$a" -eq "$b" ]
then #    ^
  echo "$a is equal to $b."
fi

c=24
d=47

if [ "$c" -eq 24 -a "$d" -eq 47 ] # [[ "$c" = 24 && "$d" = 47 ]]
then #    ^              ^
  echo "$c equals 24 and $d equals 47."
fi
