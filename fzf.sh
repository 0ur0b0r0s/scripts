#!bin/bash

path=$(find ~/Documents/ ~/Downloads/ ~/Programming/ ~/Tools/ ~/.scripts/ ~/.config/ -type f -exec du -a {} + 2>/dev/null | awk '{ print $2 }' | egrep -v ".xml|.js|.html|.git|.css|.php" | fzf)
extension=$(file $path 2>/dev/null)

if [[ $extension =~ "text" ]];then 
    nvim $path
elif [[ $extension =~ "directory" ]];then
    cd ~/$path
elif [[ $extension =~ "pdf" ]];then
    zathura $path
elif [[ $extension =~ "jpg" ]];then
    sxiv $path
elif [[ $extension =~ "png" ]];then
    sxiv $path
elif [[ $extension =~ "gif" ]];then
    sxiv $path
elif [[ $extension =~ "mp3" ]];then
    mocp $path
fi
