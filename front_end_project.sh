
#!/bin/bash
# Port killer
createProject() {
echo -n "Enter name of project :[name]"
read name

mkdir $name
cd $name
mkdir public
mkdir scss
mkdir src
touch .gitignore
echo .idea >> .gitignore 
echo .vscode >> .gitignore
echo node_modules >> .gitignore

cd public 
touch index.html
cd ..
cd scss 
touch main.scss
touch _variables.scss
touch _media_queries.scss
cd ..
cd src
touch index.js
echo "console.log('im working')" >> index.js
cd ..


npm init -y 
npm install node-sass webpack webpack-cli  --save-dev
git init
echo "dont forget to add  \"scss\": \"node-sass --watch main/main.scss -o css\" to you package.json file in the scripts section"
echo "npm run scss to start watching scss folder for changes"
}

createProject