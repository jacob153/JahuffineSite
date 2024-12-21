$ObsidianPostsPath = "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts"
$HugoInstallPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite"
$RepoName = "JahuffineSite"

Set-Location $HugoInstallPath
robocopy posts "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts" /mir
python3 images.py
hugo
git add .
$CommitMessage = "Post Update on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m "$CommitMessage"
git push -u origin master
git subtree split --prefix public -b hostinger-deploy
git push origin hostinger-deploy:hostinger --force
git branch -D hostinger-deploy