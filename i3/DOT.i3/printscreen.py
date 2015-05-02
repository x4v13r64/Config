#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from os import listdir
from os.path import isfile, join
from subprocess import call

home_path = "/home/j4v/"

home_files = [ f for f in listdir(home_path) if isfile(join(home_path, f)) ]
printscreen_files = [ f for f in home_files if "printscreen" in f]
numbers = [int(f.split(".")[0].split("printscreen")[1]) for f in printscreen_files]

number = max(numbers)+1 if numbers else 0

ret = call("import -window root /home/j4v/printscreen%d.jpg" % number, shell=True)

print(ret)
