#!/usr/bin/env sh
set -e  # exit on any error so a silent failure can't masquerade as success

# Commit message: pass as first argument, e.g. ./bin/send.sh "added Kuwait paper"
# Defaults to "updating site" if none provided.
MSG="${1:-updating site}"

echo "starting to build site"

# build site files in website
bundle exec jekyll build

# copy files into serving site folder
cp -r _site/* ../eayork.github.io

# move to serving folder
cd ../eayork.github.io

# remote add is harmless if it already exists; ignore that one specific error
git remote add origin https://github.com/eayork/eayork.github.io 2>/dev/null || true

# stage everything (new, modified, deleted) before committing
git add -A

# only commit if there's actually something to commit
if ! git diff --cached --quiet; then
  git commit -m "$MSG"
  git push origin master
  echo "finished building site"
else
  echo "no changes to publish"
fi
