#!/bin/bash
#
# $EXECUTABLE_NAME - One-line synopsis goes here.
#
PATH=$PATH:/bin

# Set a script name and version string for later use.
EXECUTABLE_NAME=$(basename $0)
VERSION="$EXECUTABLE_NAME v0.01 YYYY-MM-DD"
LOCALHOST=$(uname -n | awk -F. '{print $1}')

# Declare some functions.

# Print usage information.
function usage {
  cat << EOF

$EXECUTABLE_NAME - One-line synopsis goes here.

Usage: $EXECUTABLE_NAME [-hv]

A longer description of what the script does goes here.

Other Options:
-h            Print this message and exit.
-v            Print version string and exit.

EOF
}

# Print version information.
function version {
  echo $VERSION
}

# Print help information.
function help {
  version
  usage
}

# Command line options processing.
while getopts "hv" OPTION
do
  case $OPTION in
    h)
      help
      exit 0
    ;;
    v)
      version
      exit 0
    ;;
    ?)
      usage
      exit 1
    ;;
  esac
done
shift $((OPTIND-1))  # remove processed arguments from $*

exit 0
