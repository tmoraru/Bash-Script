#!/bin/bash

read -p "Username:" 
read -sp "Password:" 

new_branch = "$my-new-branch"

git --version 2>&1 >/dev/null 

if [ $? == 0]; then
  echo "you have installed git"
  git --version
else 
  echo "Git is not installed"
  yum install git -y
fi

git add .
git commit -m "added"
git push -u origin ${new_branch}
