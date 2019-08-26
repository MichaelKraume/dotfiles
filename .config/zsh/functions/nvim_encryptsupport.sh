#!/bin/bash

if [[ $(checkifencrypted $1) ]]; then
	viencrypt $1
else
	nvim $1
fi
