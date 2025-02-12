#!/bin/bash

# Script to show the status and version of the tools required for the repo
echo 'Summary of the tools required for the repository:'

# Show the installed version of Git
git --version

# Show the installed version of Java
java -version

# Show the installed version of curl
curl --version | head -n 1

# Show the installed version of unzip
unzip -v | head -n 1
