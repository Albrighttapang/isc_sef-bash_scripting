

#!/bin/bash


users_file="users.txt"

read -p "Enter username: " input_username

read -sp "Enter password: " input_password
echo  
match_found=false
while IFS=: read -r stored_username stored_password; do
    if [[ "$input_username" == "$stored_username" && "$input_password" == "$stored_password" ]]; then
        match_found=true
        break
    fi
done < "$users_file"

if $match_found; then
    echo "Login successful!"
else
    echo "Login failed! Invalid username or password."
fi

