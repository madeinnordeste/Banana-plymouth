#!/bin/bash
 
## Preview Plymouth Splash ##
##      by _khAttAm_       ##
##    www.khattam.info     ##
##    License: GPL v3      ##


## depends 
# apt-get install plymouth-x11

# root execute only

# http://www.khattam.info/plymouth-preview-a-tool-to-preview-your-plymouth-theme-2010-11-19.html
 
chk_root () {
 
  if [ ! $( id -u ) -eq 0 ]; then
    echo Must be run as root
    exit
  fi
 
}
 
chk_root
 
DURATION=$1
 
if [ $# -ne 1 ]; then
	DURATION=5
fi
 
plymouthd; plymouth --show-splash ; for ((I=0; I<$DURATION; I++)); do plymouth --update=test$I ; sleep 1; done; plymouth quit
