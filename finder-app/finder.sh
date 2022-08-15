#!/bin/bash
#echo "Hello World"

filesdir=$1
searchstr=$2
retval=0

if [ -z "$filesdir" ] 
then
  retval=1
  echo "Error: Argument 1, File directory is not specified."
fi

if [ -z "$searchstr" ] 
then 
  retval=1
  echo "Error: Argument 2, Search string is not specified."
fi

if ! [ -d "$filesdir" ]
then
  retval=1
  echo "Error: $filesdir is an invalid directory."
fi

#echo $searchstr "--" $filesdir
#result=$(grep -ir "$searchstr" "$filesdir" | wc -l)
#echo $result

X=$(find $filesdir -type f | wc -l) #Number of files in directory
Y=$(grep -ir "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"
