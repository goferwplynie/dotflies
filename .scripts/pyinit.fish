#! /usr/bin/env fish

echo "creating virtual env..."
python -m venv .venv
echo "done!"

echo "adding .venv to .gitignore..."
touch .gitignore
echo ".venv" >.gitignore
echo "done!"

echo "initializing git repo..."
git init >/dev/null
git add . >/dev/null
git commit -m "init :3" >/dev/null
echo "done!"
echo "activate virtual env by: 'source .venv/bin/activate.fish' :3"
