set /p "message=Enter Commit Message:"
mkdocs build
git add .
git commit --message "%message%"
git push
mkdocs gh-deploy
pause