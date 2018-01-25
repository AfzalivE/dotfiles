#!/bin/sh

# check for where the latest version of IDEA is installed
IDEA=`ls -1d /Applications/Android\ Studio*.app | head -n1`
wd=`pwd`

# were we given a directory?
if [ -d "$1" ]; then
#  echo "checking for things in the working dir given"
  wd=`ls -1d "$1" | head -n1`
fi

# were we given a file?
if [ -f "$1" ]; then
#  echo "opening '$1'"
  open -a "$IDEA" "$1"
else
    # let's check for stuff in our working directory.
    pushd $wd > /dev/null

    # does our working dir have an .idea directory?
    if [ -d ".idea" ]; then
#      echo "opening via the .idea dir"
      open -a "$IDEA" .

    # Is there a settings.gradle?
    elif [ -f settings.gradle ]; then
#      echo "importing from gradle"
#       open -a "$IDEA" .
      open -a "$IDEA" "settings.gradle"

    # Is there a build.gradle?
    elif [ -f build.gradle ]; then
#      echo "importing from gradle"
#       open -a "$IDEA" .
      open -a "$IDEA" "build.gradle"

    # can't do anything smart; just open IDEA
    else
#      echo 'cbf'
      open "$IDEA"
    fi

    popd > /dev/null
fi
