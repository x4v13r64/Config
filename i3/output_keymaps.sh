#!/bin/bash

# is CA
if (setxkbmap -print | grep xkb_symbols | grep us); then
    echo CA
# is US
else
    echo US
fi
