#!/usr/bin/env fish

set username "goferwplynie"
echo "user: $username"

set projectname (basename (pwd))
echo "project: $projectname"

set module "github.com/$username/$projectname"

echo "initializing go module $module..."
go mod init $module >/dev/null 2>&1
echo "Success!"

echo "initializing git repo"
git init >/dev/null
echo "Success!"
git add . >/dev/null
git branch -M main

set commitName "init :3"

git commit -m $commitName >/dev/null
echo "commited '$commitName'"
