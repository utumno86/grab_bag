 #!/bin/bash
for USER_TEMPLATE in "/System/Library/User Template"/*
do
  /usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/.GlobalPreferences DSDontWriteNetworkStores -bool TRUE
done
