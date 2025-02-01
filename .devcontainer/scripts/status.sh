#!/bin/bash

# Script to show the status and version of the tools required for the repo
echo 'Summary of the tools required for the repository:'

# Show the installed version of cURL
echo 'cURL:' $(curl --version | head -n 1)

# Show the installed version of Git
echo 'Git:' $(git --version)

# Show the installed version of Java
echo 'Java:' $(java -version)

# Show the installed version of unzip
echo 'unzip:' $(unzip -v | head -n 1)

# Show the targeted version of Forge
echo 'Target Forge version: ' $(grep 'forge_version=' gradle.properties)

# Show the targeted version of Minecraft
echo 'Targeted Minecraft version: ' $(grep 'minecraft_version=' gradle.properties)
