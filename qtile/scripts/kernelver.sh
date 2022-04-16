#!/bin/sh
echo " $(uname -r | awk -F '-' '{print $1}')"
