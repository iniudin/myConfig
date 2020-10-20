echo "Message: "
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
    echo "IT IS CLEAN"
else
    git status
    echo "Branch: "
    read branch
    git push -u origin ${branch}
fi
