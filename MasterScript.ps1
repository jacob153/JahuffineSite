#$ObsidianPostsPath = "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts"
$HugoInstallPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite"
##$HugoContentPostsPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts"
#$RepoName = "JahuffineSite"

Set-Location $HugoInstallPath
robocopy "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts" /mir
Python3 .\images.py
hugo.exe
git add .
$CommitMessage = "Post Update on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m "$CommitMessage"
git push -u origin master
git subtree split --prefix public -b hostinger-deploy
git push origin hostinger-deploy:hostinger --force
git branch -D hostinger-deploy