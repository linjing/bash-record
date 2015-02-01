#!/bin/bash

input=$1
key=`expr x${input} : 'x\([^=]*\)='`
value=`expr x${input} : 'x[^=]*=\(.*\)'`

echo $key
echo $value


