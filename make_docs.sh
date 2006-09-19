#!/bin/sh

if [ ! -d docs ]
then
    mkdir docs
fi

for x in `find . -maxdepth 1 -type d -name '[^.]*' -printf '%f\n'`
do
    if [ $x != "docs" ]
    then
        echo $x
        make -C $x > /dev/null
        make -C $x html > /dev/null
        rm -rf docs/$x
        mv $x/$x docs
        mace -C $x clean > /dev/null
    fi
done

echo "Should be ready to scp -r docs username@shell.sf.net:/home/groups/z/zs/zsrep/htdocs"
