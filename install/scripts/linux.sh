#!/bin/bash

mkdir -p $HOME/.multi-tasker/bin
curl https://afreechameleon.github.io/multask-docs/install/packages/multask_deb-0.20.0.tar.gz -s -o $PWD/mlt.tar.gz
tar xvfz $PWD/mlt.tar.gz > /dev/null
mv $PWD/mlt_deb-0.20.0/mlt $HOME/.multi-tasker/bin
rm $PWD/mlt.tar.gz
rm -r $PWD/mlt_deb-0.20.0
if [[ $SHELL == *"zsh"* ]]; then
    rc_content=(cat $HOME/.zshrc)
    if [[ $rc_content == *"export PATH=\"\$PATH:$HOME/.multi-tasker/bin\""* ]]; then
        echo "export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"" >> $HOME/.zshrc
    fi
elif [[ $SHELL == *"bash"* ]]; then
    rc_content=(cat $HOME/.bashrc)
    if [[ $rc_content == *"export PATH=\"\$PATH:$HOME/.multi-tasker/bin\""* ]]; then
        echo "export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"" >> $HOME/.bashrc
    fi
elif [[ $SHELL == *"/sh"* ]]; then
    rc_content=(cat $HOME/.shrc)
    if [[ $rc_content == *"export PATH=\"\$PATH:$HOME/.multi-tasker/bin\""* ]]; then
        echo "export PATH=\"\$PATH:$HOME/.multi-tasker/bin\"" >> $HOME/.shrc
    fi
else
    echo "Shell not recognized, bash & zsh officially supported. Manual installation needed."
fi

echo "To use multask in this session, run: export PATH=\"\$PATH:$HOME/.multi-tasker/bin\""
