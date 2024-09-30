#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name a big city: " PLACE
read -p "3. Name a celebrity: " NAME
read -p "4. How is the weather today?: " WEATHER
read -p "5. What is today's date?: " DATE
read -p "6. Name a verb: " VERB
read -p "7. Give me a name " NAME1
read -p "8. Give me an unusual animal name: " ANIMAL

echo "Once upon a time, there was a $NOUN1 player named $NAME1."
echo "$NAME1's dream city to live in is $PLACE because $NAME lives there."
echo "$NAME1 also like how the city is always $WEATHER."
echo "On $DATE, $NAME1 decided to $VERB with their $ANIMAL." 
