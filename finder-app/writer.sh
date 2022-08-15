#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ]
then
  retval=1	
  echo "Error: Argument 1, File name is not specified."
fi

if [ -z $writestr ]
then
  retval=1	
  echo "Error: Argument 1, File name is not specified."
fi

#> $writefile
echo -n $writestr>$writefile

