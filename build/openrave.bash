#!/bin/bash
# source openrave into the path given its install prefix
if test $# -eq 0; then
    # try the installed path
    abspath=/usr/local
else
    abspath=`cd $1; pwd`
fi

export PATH=$abspath/bin:$PATH
if [ -e "`which openrave-config`" ]; then
    export LD_LIBRARY_PATH=$abspath/lib:$LD_LIBRARY_PATH
    export PYTHONPATH=`openrave-config --python-dir`:$PYTHONPATH
    export OCTAVE_PATH=`openrave-config --octave-dir`:$OCTAVE_PATH
    source `openrave-config --share-dir`/openrave_completion.bash
fi
