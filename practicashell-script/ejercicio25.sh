#!/bin/bash
array=($(cat /etc/group | grep -E ^users: | cut -d: -f4 | tr ',' ' '))
echo ${array[*]}
arr=(1 2 3 4 5)
case $1 in
"-b") 
long= `expr ${#arr[*]} - 1`
if [ $2 < $long ]
then 
echo ${arr[$2]}
fi;;
"-l")
echo ${#arr[*]};;
"-i") 
echo ${arr[*]};;
*) 
echo "Parametro incorrecto"
esac
