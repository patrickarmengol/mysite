#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"


# Remove existing
printf "\033[0;32mDeleting contents of public...\033[0m\n"
rm -r `ls -A public/ | grep -v "\.git\|CNAME"`

# Build the project.
printf "\033[0;32mBuilding with hugo...\033[0m\n"
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
