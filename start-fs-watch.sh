#!/bin/zsh
echo "Starting FS watch for auto-pushing blog posts"
fswatch ./_posts --event-flags | zsh ./auto-commit-and-push.sh
