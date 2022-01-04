#!/bin/bash

which nix
if [ $? -eq 0 ]
then
	echo "nix installed"
else
	echo "nix not installed"
fi
