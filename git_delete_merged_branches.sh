#!/bin/bash

git branch -r --merged | egrep -v "(^\*|master|develop)" | sed 's/origin\//:/' | xargs -n 1 git push origin
