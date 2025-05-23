#!/bin/bash

mkdir -p $HOME/.multi-tasker/bin
curl https://afreechameleon.github.io/multask-docs/install/packages/multask_freebsd-0.20.0.tar.gz -s -o $PWD/mlt.tar.gz
tar xvfz $PWD/mlt.tar.gz
mv $PWD/multask_freebsd-0.20.0/mlt $HOME/.multi-tasker/bin
rm $PWD/mlt.tar.gz
rm -r $PWD/mlt_freebsd-0.20.0

echo "To use multask, add this to your .rc file: export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"
