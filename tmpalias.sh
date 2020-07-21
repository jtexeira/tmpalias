#!/bin/sh

add() {
    echo "alias $1='$2'" >> ~/.tmpalias
    . ~/.tmpalias
}

rm() {
    sed -i "/alias $1=/d" ~/.tmpalias
    unalias $1
}

list() {
    cat ~/.tmpalias
}

case $1 in
    add)
        shift
        add $1 $2
        ;;
    rm)
        shift
        rm $@
        ;;
    list)
        list
        ;;
esac
