#!/bin/bash
for program in `brew cask list`

do
  echo $program
  # brew cask install --force "$program"
  for version in `ls -trh /opt/homebrew-cask/Caskroom/$program`

  do
    echo $version
  done
done
