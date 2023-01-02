#!/bin/bash
folder_name=$1
package_manager=$2

if [ package_manager == "npm" ]; 
then
    install_cmd = "npm install"
else
    install_cmd="yarn add"
fi

mkdir ${folder_name}
cd ${folder_name}
$package_manager init -y
$install_cmd express mongoose dotenv cors
$install_cmd -D nodemon
touch index.js
git init .
touch .gitignore 
echo "node_modules/" >> .gitignore
echo ".env*"

git add .
git commit -m "Server Init"

code .