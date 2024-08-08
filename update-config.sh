#!/bin/bash

# change directory from wherever we were
cd ~/code/learn-you-haskell/
echo `pwd`

# save a copy of init.el
cp -v ~/.emacs.d/init.el ~/code/learn-you-haskell/emacs-config/init.el

# force this into git repo 
git add emacs-config/init.el
git commit -m "updated emacs haskell config"
# push to github
git push origin main


#sweet!



