#!/bin/bash
echo "# router-project2" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/akademsubotnik/router-project.git
git push -u origin main
