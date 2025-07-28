#!/bin/bash

# Variables
USERNAME="ansible-user"
PASSWORD="ansible"

useradd -m -s /bin/bash "$USERNAME"

echo "$USERNAME:$PASSWORD" | chpasswd

# Ubuntu/Debian
usermod -aG sudo "$USERNAME"

# Rocky/CentOS/Fedora/RHEL
# usermod -aG wheel "$USERNAME"

chown -R "$USERNAME:$USERNAME" /home/"$USERNAME"
chmod 755 /home/"$USERNAME"

echo "User $USERNAME is ready!"
