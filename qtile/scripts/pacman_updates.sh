#!/bin/bash
exe=$(pamac checkupdates | awk '{print $1}' | head -n 1)
	echo " $exe "
