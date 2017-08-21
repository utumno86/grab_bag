#!/bin/bash
for file in /data/drop/inbox/queue//*.zip

do
  echo $file
  ./runFolder.sh  "$file"
done
