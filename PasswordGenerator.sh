#!/bin/bash
#Simple Password Generator

figlet r4vindra
echo "This is a Simple Random Password Generator Tool!"
echo "= = = = = = = = = = = = = = = = = = = = = = = = "
read -p "Enter The Length of Password you Want: " LENGHT
read -p "Enter The Number of Passwords you Want: " NPASS
echo "= = = = = = = = = = = = = = = = = = = = = = = ="
echo ""
echo ""
echo "Below are the $LENGHT Digits Passwords!"
echo ""
for PASS in $(seq 1 $NPASS);
do
	openssl rand -base64 48 | cut -c1-$LENGHT
done
