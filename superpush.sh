#!/bin/bash


# This script is used to push changes to the remote repository

repository=$1;
branch=$2;
message=$3;

if [[ "$1" == "-help" || "$1" == "--help" || "$1" == "-h" || "$1" == "--h" ]]; then
  echo "Usage: superpush <repository> <branch> <message>"
  echo "Example: superpush origin master 'Initial commit'"
  exit 0
fi

git add . && git commit -m "$3" && git push $1 $2
