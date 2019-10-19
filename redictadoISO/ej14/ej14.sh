#!/bin/bash
echo "Renombrando archivos..."
cd $1
if [ $2 == -a ]; then
	for i in *; do
		f=$i$3;
		mv $i $f;
		done
		exit
fi
if [ $2 == -b ]; then
	for i in *; do
		f=$3$i;
		mv $i $f;
		done
		exit
fi
	
