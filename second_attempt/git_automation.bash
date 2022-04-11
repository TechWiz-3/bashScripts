#!/bin/bash

echo "Files: "
read file
echo "Commit message: "
read commit_message
git add $file
git commit -m "$commit_message"