#$ObsidianPostsPath = "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Posts"
$HugoInstallPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite"
##$HugoContentPostsPath = "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\posts"
#$RepoName = "JahuffineSite"

#cd script into the hugo install root directory
Set-Location $HugoInstallPath

#Sync Obsidian posts into Hugo install content folder
robocopy "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Projects" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\Projects" /mir
Python3 .\PostImageProcessing.py

#Sync and process images for Documentation
robocopy "C:\Users\Jacob\Obsidian Vaults\Personal\Jahuffine Website\Documentation" "C:\Users\Jacob\OneDrive\Documents\JahuffineSite\content\Documentation" /mir
Python3 .\DocumentationImageProcessing.py

hugo.exe build

hugo.exe serve