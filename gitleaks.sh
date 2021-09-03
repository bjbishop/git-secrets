#!/usr/bin/env bash

if ! command -v brew 2>&1; then
  echo "Need to install homebrew!  https://brew.sh" 
  exit 1
fi

command -v gitleaks 2>&1 || brew install gitleaks

gitleaks --verbose --unstaged
gitleaks --verbose --path "$(git rev-parse --show-toplevel)"
