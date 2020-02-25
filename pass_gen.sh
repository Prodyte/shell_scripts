#!/bin/bash
#password generator

echo "Password Generator"
read -p "Enter length : " PASS_LENGTH

for p in $(seq 1 10);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

