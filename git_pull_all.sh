#!/bin/bash

CUR_DIR=$(pwd)

echo "Pulling in latest changes for all repositories..."

for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo $i;

    cd "$i";
    cd ..;

    git pull;

    cd $CUR_DIR
done

echo "Done!"
