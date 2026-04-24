#!/usr/bin/env fish

cd /home/chk/learning-devops #<-- change path to ur project
echo "curent directory: "(pwd)

read -P "enter commit text: " -l commit_msg

if test -z "$commit_msg"
    echo "commit can't be empty"
    exit 1
end

git add .
git commit -m "$commit_msg"
git push origin main

echo "script has been finished"
