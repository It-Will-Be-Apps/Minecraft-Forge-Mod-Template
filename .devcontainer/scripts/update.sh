#!/bin/bash

# Script to keep the tools required for the repo up to date
echo 'Updating tools required for the repository...'

# Upgrade the Ubuntu managed packages
apt-get update
apt-get -y upgrade

# Update cURL
echo 'Updating cURL...'
apt-get -y install curl
echo 'cURL updated!'

# Update Git
echo 'Updating Git...'
apt-get -y install git
echo 'Git updated!'

# Update Java
echo 'Updating Java...'
apt-get -y install default-jdk
echo 'Java updated!'

# Update unzip
echo 'Updating unzip...'
apt-get -y install unzip
echo 'unzip updated!'



# Install Forge MDK
echo 'Installing and configuring Forge MDK...'

# Download and unzip the latest version
#mkdir forge-mdk
#FORGE_MDK_URL=$(curl -s https://files.minecraftforge.net/net/minecraftforge/forge/ | grep -oP 'https://.+forge.+mdk.*\.zip' | sort -rV | head -n 1)
#curl -o forge-mdk/forge-mdk.zip https://maven.minecraftforge.net/net/minecraftforge/forge/1.21.4-54.0.35/forge-1.21.4-54.0.35-mdk.zip
#unzip -d forge-mdk forge-mdk/forge-mdk.zip

# Remove example files that are mod specific (update only)
#For update, merge carefully gradle.properties
#rm forge-mdk/forge-mdk.zip
#rm forge-mdk/.gitignore
#rm forge-mdk/src/main/java #Update only

# Copy the remaining files to the workspace
#cp -a forge-mdk/. .

# Remove the downloaded files
#rm -rf forge-mdk

# Generate the VSCode launch configurations
#./gradlew :genVsCodeRuns

echo 'Forge MDK installed and configured!'