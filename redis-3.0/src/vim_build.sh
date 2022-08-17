#!/bin/sh

set -x

find `pwd` -name *.cpp -o -name *.hpp -o -name *.c -o -name *.h > cscope.files

cscope -Rbk

ctags -R --languages=c++,c,Make,Sh,python  --c++-kinds=+px --fields=+aiKSz  --extra=+q

echo "Vim Config Complete!"
