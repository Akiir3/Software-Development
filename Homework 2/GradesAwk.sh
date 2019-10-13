#! /bin/bash
#Eric Oropezaelwood
#Erika Bailon

inputFile=$1

#Sort File based on last name, first name, then ID
sort -k3,3 -k2,2 -k1,1 $inputFile -o $inputFile

awk '{print int(($4+$5+$6)/3) " [" $1 "] " $3 ", " $2}' $inputFile
