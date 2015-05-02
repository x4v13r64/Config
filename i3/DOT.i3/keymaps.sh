#!/bin/bash

# set CA
if (setxkbmap -print | grep xkb_symbols | grep us); then
    setxkbmap ca
# set US
else
    setxkbmap us
fi


