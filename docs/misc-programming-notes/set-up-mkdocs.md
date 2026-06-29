## Basic Steps


### Install Python
Look up how to install Python then install Python :) sorry i'm lazy :)

### Install pip
pip is like a store for python you may need to install it to install mkdocs i forget

### Install mkdocs
Install mkdocs
```
pip install mkdocs
```  

### Install awesome-nav plugin for mkdocs
Install awesome-nav plugin for mkdocs:
https://lukasgeiter.github.io/mkdocs-awesome-nav/
```
pip install mkdocs-awesome-nav
```

### Create mkdocs project
Open terminal where you want mkdocs project folder to go and run:
```
mkdocs new name-of-mkdocs-project-goes-here
```

Enable awesome-nav plugin in mkdocs.yml (located inside mkdocs project folder):
```yml
plugins:
    - search
    - awesome-nav
```

### Initialize mkdocs project as git repository
Create a ".gitignore" file, place the following text inside:
```
# MkDocs generated site
site/

# Python cache
__pycache__/
*.pyc

# Virtual environment (if any)
venv/
env/

# vs code stuff
*.code-workspace

```

Initialize local mkdocs project as git repository.
Create new GitHub repo and push local mkdocs project to said GitHub repo.
See git-quick-guide for help.

### (CURRENT) Make GitHub auto-create website
Enable pages on GitHub

In your local repo, add
```
.github\workflows\main.yml
```

Add the following to main.yml:
```
name: Publish docs via GitHub Pages
on: 
  push:
    branches:
      - main
  workflow_dispatch:
    
permissions:
  contents: write

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.x'

      - name: Install dependencies
        run : |
          pip install mkdocs-awesome-nav
          pip install mkdocs-material

      - name: Deploy to GitHub Pages
        run: mkdocs gh-deploy --force
```

### Add material theme if you want
```yml
site_name: misc-programming-notes-mkdocs
plugins:
  - search
  - awesome-nav
theme:
  name: material
```

## Archive
### (OUTDATED) Set up GitHub deployment
In the terminal, run:
```
mkdocs gh-deploy
```

### (OUTDATED) add bat file to deploy to Github
The .bat file should contain the following:
```
set /p "message=Enter Commit Message:"
mkdocs build
git add .
git commit --message "%message%"
git push
mkdocs gh-deploy
pause
```

This should make it easier to commit/push git, and build/deploy the website.