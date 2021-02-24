#!/usr/bin/env bash

wget https://github.com/github/codeql-action/releases/latest/download/codeql-runner-linux
chmod +x codeql-runner-linux

echo $(whereis codeql-runner-linux)

codeql-runner-linux init --repository malirezai/android-codeql-sample
    --github-url https://github.com --github-auth $GITHUB_PAT_TOKEN
