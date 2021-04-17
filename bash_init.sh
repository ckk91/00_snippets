#!/bin/env bash
# snippets for copy pasting as needed
# also some potential repo links for further exploration here:
# https://github.com/anordal/shellharden/blob/master/how_to_do_things_safely_in_bash.md

# === strict mode
set -e  # stop on errors
set -u  # stop on unset vars

set -euo pipefail  # stop on the above and when pipe fails
IFS=$'\n\t'  # todo find out wth this is

# === main pattern, prevent exec on sourcing a script
function main {
}

if [ "$0" = "$BASH_SOURCE" ] ; then
	main
fi
# === function call cleanup on fail
failing_function || cleanup_failed_function

# === bail early from a function w/ success
function bail_early {
	test 1 && return 0  # since test is true we exit early 
}

# === trap handler for strict mode

function finish () {  # this is also exit handler
    if [ "$1" != "0" ]; then
		# where's the error?
		echo "Error $1 on line $2. Recheck your vars."
		# rollback/cleanup
    else
		# all good
    fi
}

trap 'finish $? $LINENO' EXIT  