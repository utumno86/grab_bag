#!/bin/bash
for program in `brew cask list`

do
  echo $program
  brew cask install --force "$program"
done
