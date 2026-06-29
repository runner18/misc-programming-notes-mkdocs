## Basic Steps
### Create git repository
This is for tracking version history and deploying the website to GitHub

Open terminal, run:
```
git init project_name_goes_here
```

Create file called ".gitignore", paste the following text inside:
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

### Install Python


### Install mkdocs


### Install awesome-nav mkdocs plugin


### Save as vs code workspace if you want



### Set up GitHub deployment
In the terminal, run:
```
mkdocs gh-deploy
```

### add bat file to deploy to Github