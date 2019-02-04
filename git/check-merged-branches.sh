git branch -r --merged | grep -v master | grep origin | sed 's/origin\///' | xargs -n 1 echo
