# Set Time and Date Variables
currentDate=`/bin/date '+%X-%m-%d'`
currentTime=`/bin/date '+%H:%M:%S'`

# Push it to GitHub
git add .
git commit -m "Updated Dotfiles ${currentDate} ${currentTime}"
git push
