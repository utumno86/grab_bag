#!/bin/bash
for file in /data/drop/inbox/queue/PCAP020-PartnersCapitalDocumentUpload/*.zip

do
  echo $file
  ./runFolder.sh PCAP020-PartnersCapitalDocumentUpload "$file"
done
