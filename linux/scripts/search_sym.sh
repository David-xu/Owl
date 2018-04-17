#!/bin/bash
# This is used to search a symbol in dir.
# $1  : search dir
# $2 : symbol name

OBJFILES=$(ls $1 | grep '\.o$')
for curobj in ${OBJFILES}
do
        validline=$(nm $1${curobj} | grep $2)
        if [ -n "$validline" ]
        then
                echo $curobj
        fi
done

