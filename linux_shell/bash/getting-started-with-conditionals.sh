#!/bin/bash

read c

if [ "$c" == "Y" ] || [ "$c" == "y" ] ; then
  echo "YES"
elif [ "$c" == "N" ] || [ "$c" == "n" ]; then
  echo "NO"
fi
