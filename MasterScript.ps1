#$ObsidianPostsPath = "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts"
$HugoInstallPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite"
##$HugoContentPostsPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts"
#$RepoName = "JahuffineSite"

#cd script into the hugo install root directory
Set-Location $HugoInstallPath

#Sync Obsidian posts into Hugo install content folder
robocopy "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts" /mir
Python3 .\PostImageProcessing.py

#Sync and process images for Documentation
robocopy "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Documentation" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\Documentation" /mir
Python3 .\DocumentationImageProcessing.py

hugo.exe
git add .
$CommitMessage = "Post Update on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m "$CommitMessage"
git push -u origin master
git subtree split --prefix public -b hostinger-deploy
git push origin hostinger-deploy:hostinger --force
git branch -D hostinger-deploy
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');