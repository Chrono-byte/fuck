#!/bin/bash

args=("$@")

fuck_this()
{
    echo "Sure thing."
    sleep 1
    kill -9 $PPID
    exit
}

fuck_you()
{
    echo "Oh, really?"
    sleep 2
    shutdown -h now
}

fuck_me()
{
    echo "I am incapable of such a task. However, I have opened a new window for you that may be helpful. Good luck."
    sleep 2
    if which xdg-open > /dev/null
    then
        xdg-open https://tinder.com
    elif which gnome-open > /dev/null
    then
        gnome-open https://tinder.com
    fi
    exit
}

fuck_myself()
{
    echo "Well, prepare your hand and paper..."
    sleep 2
    if which xdg-open > /dev/null
    then
        xdg-open https://xvideos.com
    elif which gnome-open > /dev/null
    then
        gnome-open https://xvideos.com
    fi
    exit
}

fuck_myself()
{
    echo "Well, prepare your hand and paper..."
    if which xdg-open > /dev/null
    then
        xdg-open xvideos.com
    elif which gnome-open > /dev/null
    then
        gnome-open xvideos.com
    fi
    exit
}

case ${args[0]} in
this)
    fuck_this
    ;;
you | off)
    fuck_you
    ;;
me)
    fuck_me
    ;;
myself)
    fuck_myself
    ;;
*)
    echo "I know how you feel."
    sleep 2
    exit
    ;;
esac
