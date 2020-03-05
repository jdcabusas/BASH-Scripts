#!/bin/bash

#Script used to test if host is online by pinging the IP ADDRESS from list provided in address.txt

awk ' BEGIN { print "Pinging the following addresses: "} { print } ' address.txt
sleep 2
echo
INPUT="address.txt"
while IFS= read -r line
do  
ADDRESS=$(echo $line | cut -d' ' -f 1)
ping -c 1 $ADDRESS
STATUS=$?
if [ $STATUS -ne 0 ]
then
 echo "$ADDRESS -----HOST IS DOWN-----"
else
 echo "$ADDRESS -----HOST IS UP-----"
fi
echo
sleep 3
done < "$INPUT"



#ping -c 1 google.comndjnfsdjf
#STATUS=$?
#if [ $STATUS -ne 0 ]
#then
# echo "HOST IS DOWN"
#else
# echo "HOST IS UP"
#fi
