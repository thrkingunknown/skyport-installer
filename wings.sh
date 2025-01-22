#!/bin/bash

# Display the ASCII Art logo
echo "███████╗ ██████╗ ██╗      ██████╗ ██████╗ ██╗      █████╗ ██╗   ██╗███████╗"
echo "██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝╚══███╔╝"
echo "███████╗██║   ██║██║     ██║   ██║██████╔╝██║     ███████║ ╚████╔╝   ███╔╝ "
echo "╚════██║██║   ██║██║     ██║   ██║██╔═══╝ ██║     ██╔══██║  ╚██╔╝   ███╔╝  "
echo "███████║╚██████╔╝███████╗╚██████╔╝██║     ███████╗██║  ██║   ██║   ███████╗"
echo "╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝"
echo ""

# Install necessary dependencies
echo "Installing necessary dependencies..."


# Step 2: Add NodeSource GPG key
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Step 3: Add NodeSource repository to sources list
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

# Step 4: Update package list
apt update

# Step 5: Install Node.js and Git
apt install -y nodejs git

# Step 6: Clone the repository
git clone https://github.com/achul123/skyportd


echo "Installization Done . Next Commands To Run"
echo "cd skyportd"
echo "npm i"
echo "Enter Your Node Config"
echo "node ."
