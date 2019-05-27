#1/bin/bash

KEYBOARD=$(echo -e "US\nBR" | dmenu -i -p "Select your keyboard preference." -nb black -nf green -sb purple)

if [[ $KEYBOARD =~ "US" ]];then
    setxkbmap us
    xmodmap ~/.Xmodmap
elif [[ $KEYBOARD =~ "BR" ]];then
    setxkbmap br
    xmodmap ~/.Xmodmap
fi
