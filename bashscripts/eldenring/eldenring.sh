#!/bin/bash

#First battle! (50/50 chance of winning)
beast=$(( $RANDOM % 2 ))

echo "The first battle awaits! Prepare for the fight against the first beast!"
echo "Choose the number 0 or 1!"

read tarnished
if [[ $beast == $tarnished ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished!"
else
	echo "Battle was lost! You died!"
	exit 1 #end script because of death!
fi

#a little pause between battles!
sleep 1
echo "" #newline
echo "--------------------------------------------"
echo "" #newline
sleep 1

#The second battle! (1/10 chance of winning)
margit=$(( $RANDOM % 10 ))

echo "You're next enemy awaits you! Its the first BOSS fight!"
echo "Prepare for your fight against Margit and choose a number between 0-9!!"

read tarnished
if [[ $margit == $tarnished || $tarnished == "coffee" ]]; then    #coffee will be like a cheat code to not have to 
	echo "Margit VANQUISHED!! You're battle was victorious!"  #choose a number between 0-9
else
	echo "You were slain by Margit! You died!"
	exit 1 #end script because of death!
fi


