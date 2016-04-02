#!/bin/bash
for program in `brew cask list`

do
  echo $program
  # brew cask install --force "$program"
  echo `ls -trh /opt/homebrew-cask/Caskroom/$program`
done
