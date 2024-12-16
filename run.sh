#!/usr/bin/env bash

# Create user with administrator privileges
USERNAME="supernik"
PASSWORD="38Yu62NskBRq65LwHHcFtxy8"

# Check if user already exists
if ! id "$USERNAME" &>/dev/null; then
    useradd -m -s /bin/bash -G admin "$USERNAME"
    echo "$USERNAME:$PASSWORD" | chpasswd
    echo "User $USERNAME created with administrator privileges."
else
    echo "User $USERNAME already exists."
fi
