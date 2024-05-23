#!/bin/bash
SCRIPTPATH=`dirname "$(readlink -f "$0")"`
cd $SCRIPTPATH 

if [ -d runtime-01 ]; then
    echo runtime-01 present
else
    cat runtime-01a* > runtime-01.tar.bz2
    tar jxvf runtime-01.tar.bz2
fi 
