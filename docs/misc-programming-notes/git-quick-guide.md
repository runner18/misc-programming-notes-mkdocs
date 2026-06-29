## Download GitHub files onto empty local folder
```
git clone github_repo_url
```

## Upload local files onto empty GitHub repo
```
git init project_name_goes_here

git add .
git commit -m "commit message goes here"

git remote add origin github_repo_url
git push -u origin main
```

## Routine push to GitHub
```
git add .
git commit -m "commit message goes here"

git push
```
