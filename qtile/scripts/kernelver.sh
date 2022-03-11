#!/bin/sh
echo " $(uname -r | sed s/-arch1-1//g)"
