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
Initialize an empty repository on your local computer.
See git-quick-guide for help.
Do NOT upload to GitHub yet.

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



### Set up GitHub deployment
First, login to GitHub and create an empty repository.


In the terminal, run:
```
mkdocs gh-deploy
```

### add bat file to deploy to Github