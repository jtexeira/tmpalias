#!/bin/sh
BRC=~/.bashrc
case $1 in
    -p)
        BRC=$2
esac
sudo cp tmpalias.sh /usr/local/bin/tmpalias
sudo chmod +x /usr/local/bin/tmpalias
touch ~/.tmpalias
echo '. ~/.tmpalias' >> $BRC
