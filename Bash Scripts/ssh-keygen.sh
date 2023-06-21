#!/bin/bash

# Define the directory and key names
SSH_DIR="$HOME/.ssh"
PRIVATE_KEY="$SSH_DIR/ansible"
PUBLIC_KEY="$PRIVATE_KEY.pub"

# Create the .ssh directory if it doesn't exist (does nothing if it already exists)
mkdir -p "$SSH_DIR"

# Set the correct permissions for the .ssh directory
chmod 700 "$SSH_DIR"

# Generate the SSH key pair if it doesn't exist
if [ ! -f "$PRIVATE_KEY" ]; then
    ssh-keygen -t rsa -b 4096 -C "ansible" -f "$PRIVATE_KEY" -N ""
    echo "SSH key pair generated successfully."
else
    echo "SSH key pair already exists."
fi

# Set the correct permissions for the keys
chmod 600 "$PRIVATE_KEY"
chmod 644 "$PUBLIC_KEY"
