#!/usr/bin/env bash

# Usage:
# $ . scripts/angular-my-app-generator.sh

echo "-----------------------------------------"
echo "Generate a complete Angular app (in root)"
echo "-----------------------------------------"

echo "- Keep original README initialized by Git:"
mv README.md __README.md

echo "- Generate an empty Angular workspace (in root):"
ng new app --directory ./ --create-application false --defaults

echo "- Install ESLint:"
ng add @angular-eslint/schematics

echo "- Generate a new Angular app in the workspace using ESLint:"
ng generate @angular-eslint/schematics:application app --project-root --routing --style scss --defaults --strict

echo "- Install Prettier locally:"
npm install --save-dev --save-exact prettier

echo "- Create an empty config file:"
echo {} >.prettierrc.json
cp .gitignore .prettierignore

echo "- Format all files with Prettier:"
npx prettier --write .

echo "- NbBootstrap (theme):"
ng add @ng-bootstrap/ng-bootstrap

echo "- Fontawesome (icons):"
ng add @fortawesome/angular-fontawesome

echo "- Transloco (i18n):"
ng add @ngneat/transloco

echo "- Elf (store):"
npx @ngneat/elf-cli install

echo "- Moment (dates & times):"
npm install moment --save

echo "- Restore original README initialized by Git:"
rm README.md
mv __README.md README.md

