#!/bin/bash

read -p "Enter the desired password length: " length

uppercase="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase="abcdefghijklmnopqrstuvwxyz"
digits="0123456789"
special="!@#$%^&*()-_=+[]{}|;:,.<>?/"

all_characters="$uppercase$lowercase$digits$special"


password=$(cat /dev/urandom | tr -dc "$all_characters" | fold -w $length | head -n 1)

echo "Generated password: $password"

