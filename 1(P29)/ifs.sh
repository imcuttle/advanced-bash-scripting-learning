#!/bin/sh

output_args_one_per_line()
{
    arg_list=$*
    echo "\$*='$*';   \$@='$@'"
    for arg in $arg_list
    do
        echo "[$arg]"
    done
}

x="a b c d e"
IFS=' '
output_args_one_per_line $x

x="a b c"$'\t'"d e"
IFS=$'\t'
output_args_one_per_line $x
