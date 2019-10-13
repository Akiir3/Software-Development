#! /bin/bash
#Eric Oropezaelwood
#Erika Bailon

inputFile=$1

#answers to questions coded below
#1. how many lines end with a number?
egrep [0-9]$ $inputFile |wc -l
#2. how many line do not start with a vowel?
egrep ^[^aeiouAEIOU] $inputFile |wc -l
#3. how many 12 letter (alphabet only) lines?
egrep ^[a-zA-Z]{12}$ $inputFile |wc -l
#4. how many phone number are in the dataset?
egrep -c '^[0-9]{3}\-[0-9]{3}\-[0-9]{4}$' $inputFile
#5. how many city of Boulder phone numbers?
egrep -c '^303\-[0-9]{3}\-[0-9]{4}$' $inputFile 
#6. how many begin with vowel and end with number?
egrep -c '^[aeiou|AEIOU].+?[0-9]$' $inputFile
#egrep ^[aeiouAEIOU].+[0-9]$ $inputFile |wc -l
#7. how many emails end in geocities.com?
egrep .+@geocities.com$ $inputFile |wc -l
#8. how many emails are incorrectly formatted? (334 should be the answer)
grep -o '^[a-mA-M][a-zA-Z]*\.[a-zA-Z]*@.*\..*$' $inputFile | wc -l

