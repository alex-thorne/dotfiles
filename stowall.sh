#!/bin/sh

cd ~/.dotfiles
for file in ~/.dotfiles/*; do
  if [ -d ${files} ]; then
    stow -R -v $(basename $file)
  fi
done
cd - > /dev/null