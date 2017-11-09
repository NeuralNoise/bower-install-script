#!/bin/bash

echo "Checking bower"

if bower version > /dev/null; then
  echo "bower is already installed."
else
  echo "installing bower with npm"
  if npm -v > /dev/null; then
    echo "installing bower global with npm"
    npm install -g bower
  else
    echo "npm is not installed"
  fi
fi
