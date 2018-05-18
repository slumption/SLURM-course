#Create a new repo and push the local files into github
cd /var/www/training
echo "# intro-linux-course" >> README.md
git init
#Add the files in your new local repository. This stages them for the first commit.
git add README.md
git add .
# Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
git commit -m "first commit"
# Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
git remote add origin https://github.com/ps459/intro-linux-course.git
# Sets the new remote
git remote -v
# Verifies the new remote URL
git push -u origin master
# Pushes the changes in your local repository up to the remote repository you specified as the origin

git config --global url.ssh://git@github.com/.insteadOf https://github.com/
#Set SSH rather than HTTPS
#Upload your SSH key to your account
ssh-keygen -t rsa -b 4096 -C "ps459@cam.ac.uk"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa




