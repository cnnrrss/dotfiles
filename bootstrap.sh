#!/bin/bash

x=1
count=${1:-10}
separator='~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
HASH='#'

echo "${HASH} Bash version ${BASH_VERSION}..."

echo ${separator}

echo "${HASH} Bootstraping dotfiles application"

Sleep 1

echo ${separator}

echo "${HASH} Removing cached dotfiles"

rm -rf files/*

Sleep 1

if [[ ${count} -gt 10 ]]; then echo ${separator} && echo "${HASH} Whoaa... this may take a while"; fi

echo ${separator}

# TODO: extract to a super cool function
while [ $x -lt ${count} ]
do
	echo `date` "- Writing file_${x} to files/"
	echo '.' >> files/file_${x}
	x=$(( $x + 1 ))
	Sleep 1
done

echo ${separator}
echo "${HASH} Finished bootstrapping dotfiles. Happy Dotfiling!"
echo "${HASH} License: Plz ask Connor Vanderhook"
echo ${separator}