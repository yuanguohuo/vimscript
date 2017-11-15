#!/bin/bash

file=$1

while [ -L $file ] ; do
    orig_dir=`dirname $file`
    file=`readlink $file`

    # if $file is a relative path, it's relative to the orig_dir, thus
    # we should figure out the real dir;
    if [[ $file != /* ]] ; then
        real_dir=${orig_dir}/`dirname $file`
        file=${real_dir}/`basename $file`
    fi
done

#now, we have got the path of the source file; get its absolute path;
dir=`dirname $file`
base=`basename $file`

dir=$(cd "$dir"; pwd)
echo ${dir}/${base}
