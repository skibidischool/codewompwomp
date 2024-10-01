#!/bin/bash

echo Downloading $(head -n 1 link.txt)...

if [ "$1" = true ]; then
  wget -r -e robots=off --convert-links $(head -n 1 link.txt)
else
  wget -e robots=off --convert-links $(head -n 1 link.txt)
fi