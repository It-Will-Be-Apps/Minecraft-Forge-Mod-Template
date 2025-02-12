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

# Install Forge MDK
echo 'Installing and configuring Forge MDK...'

# Download and unzip the latest version
mkdir forge-mdk
FORGE_MDK_URL=$(curl -s https://files.minecraftforge.net/net/minecraftforge/forge/ | grep -oP 'https://.+forge.+mdk.*\.zip' | sort -rV | head -n 1)
curl -o forge-mdk/forge-mdk.zip https://maven.minecraftforge.net/net/minecraftforge/forge/1.21.4-54.0.35/forge-1.21.4-54.0.35-mdk.zip
unzip -d forge-mdk forge-mdk/forge-mdk.zip

# Remove unnecessary files
rm forge-mdk/forge-mdk.zip
rm forge-mdk/.gitignore
rm forge-mdk/changelog.txt
rm forge-mdk/CREDITS.txt
rm forge-mdk/LICENSE.txt
rm forge-mdk/README.txt

# Copy the remaining files to the workspace
cp -a forge-mdk/. .

# Remove the downloaded files
rm -rf forge-mdk

# Generate the VSCode launch configurations
./gradlew :genVsCodeRuns

echo 'Forge MDK installed and configured!'
