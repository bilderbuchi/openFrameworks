#!/bin/bash

# Code styling script for CI builds

# Desired feature list:
# * If triggered by PR build, only style the files which changed in the PR
#   This can probably be done with some smart git magic and giving a list of files to an uncrustify script (which should filter the list to screen files we don't want to style, e.g. in external library code)
# * Make sure the script can meaningfully be called locally, too.
      
echo "Styling touched files with OF code style"
echo "Not yet implemented, still a no-op.sdsd"
exit 0
