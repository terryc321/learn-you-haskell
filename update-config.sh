#!/bin/bash

cd ~/code/learn-you-haskell/
echo `pwd`

cp -v ~/.emacs.d/init.el ~/code/learn-you-haskell/emacs-config/init.el
git add emacs-config/init.el
git commit -m "updated emacs haskell config"
git push origin main




