#!/bin/bash

# Directory where your Jekyll site is located
SITE_DIR="/posts"

# Remote repository URL where your posts are hosted
REMOTE_REPO_URL="https://github.com/wikimint/cv.git"

# Temporary directory to clone the remote repository
TEMP_DIR=$(mktemp -d)

# Clone the remote repository into the temporary directory
git clone "$REMOTE_REPO_URL" "$TEMP_DIR"

# Copy the posts from the temporary directory to the _posts directory of your Jekyll site
cp -r "$TEMP_DIR/_posts" "$SITE_DIR/_posts"

# Cleanup: Remove the temporary directory
rm -rf "$TEMP_DIR"
