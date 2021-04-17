#!/usr/bin/env bash
#
# docstring here
# strict mode with sourcing protection and exit handling/rollback

set -euo pipefail

function finish () {
    
    if [ "$1" != "0" ]; then
		# where's the error?
		echo "Error $1 on line $2. Recheck your vars."
		# rollback/cleanup
    else
		# all good
    fi
}

trap 'finish $? $LINENO' EXIT

function main () {

}


if [ "$0" = "$BASH_SOURCE" ] ; then
	main
fi