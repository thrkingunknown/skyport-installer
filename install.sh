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
echo "Installing necessary dependencies...Subscribe To SoloPlayz!"

# Step 1: Create keyring directory
mkdir -p /etc/apt/keyrings

# Step 2: Add NodeSource GPG key
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Step 3: Add NodeSource repository to sources list
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

# Step 4: Update package list
apt update

# Step 5: Install Node.js and Git
apt install -y nodejs git

# Step 6: Clone the repository
git clone https://github.com/achul123/panel5

# Step 7: Navigate to the project directory
cd panel5

# Step 8: Install project dependencies
npm install

# Step 9: Run database seed script
npm run seed

# Step 10: Create a new user
npm run createUser

# Step 10: Starting Skyport
node .


echo "Installation Completed - Subscribe To SoloPlayz!"
