#!/bin/zsh
echo "Auto committing and pushing"
git add ./_posts
git commit -m "auto blog commit 💃" $1
git push origin master