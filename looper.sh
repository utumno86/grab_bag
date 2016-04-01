#!/bin/bash
for file in /data/drop/inbox/queue/JobName/*.zip

do
  echo $file
  ./runFolder.sh JobName "$file"
done
