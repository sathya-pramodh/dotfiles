#!/bin/bash
exe1=$(free -h | awk 'FNR == 2 {printf $3 "/" $2}' | sed 's/i//g')
echo " RAM: $exe1 "
