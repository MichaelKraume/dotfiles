#!/bin/bash

if [[ $(file -b $1) == GPG* ]]; then
	return=1
else
	return=0
fi
echo $return
