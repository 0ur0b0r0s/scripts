#!bin/bash

path=$(du -a ~/Documents/ ~/Downloads/ ~/Programming/ ~/Tools/ ~/.scripts/ ~/.config/ | awk '{ print $2 }' | egrep -v ".xml|.js|.html|.git|.css|.php|.vim" | dmenu -l 10 -nb black -nf green -sb purple)
extension=$(file $path)

if [[ $extension =~ "text" ]];then 
    st -e nvim $path
elif [[ $extension =~ "directory" ]];then
    st -e cd ~/$path
elif [[ $extension =~ "pdf" ]];then
    st -e zathura $path
elif [[ $extension =~ "jpg" ]];then
    st -e sxiv $path
elif [[ $extension =~ "png" ]];then
    st -e sxiv $path
elif [[ $extension =~ "gif" ]];then
    st -e sxiv $path
elif [[ $extension =~ "mp3" ]];then
    mocp $path
fi
