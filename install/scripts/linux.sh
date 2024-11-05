#!/bin/bash

mkdir -p $HOME/.multi-tasker/bin
curl https://afreechameleon.github.io/multask-docs/install/packages/multask_deb-0.20.0.tar.gz -s -o $PWD/mlt.tar.gz
tar xvfz $PWD/mlt.tar.gz
mv $PWD/mlt_linux-0.20.0 $HOME/.multi-tasker/bin
rm $PWD/mlt.tar.gz
if [[ $SHELL ~= "zsh" ]]; then
    echo "export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"" >> $HOME/.zshrc
else
    echo "export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"" >> $HOME/.bashrc
fi

echo "To use multask in this session, run: export PATH=\"\$PATH:$HOME/.multi-tasker/bin\""
