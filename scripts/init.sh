#!/bin/bash

# One time script to initialize the tools required for the repo
echo 'Initializing tools required for the repository...'

# Configure Git
echo 'Configuring Git...'
git config --global core.editor "code --wait"
git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global user.signingkey $HOME/.ssh/id_ed25519.pub
git config --global gpg.format ssh
git config --global commit.gpgsign true
echo 'Git configured!'










# Fetch the latest version URL dynamically
FORGE_SDK_URL=$(curl -s https://files.minecraftforge.net/net/minecraftforge/forge/ | grep -oP 'https://.+forge.+mdk.*\.zip' | sort -rV | head -n 1)

# Construct the full URL
FULL_URL="${BASE_URL}${LATEST_URL}"

# Use wget to download the latest version of the Minecraft Forge SDK
echo "Downloading the latest version of the Minecraft Forge SDK..."
wget -O forge-installer.jar $FULL_URL
