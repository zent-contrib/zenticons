#!/bin/bash

basepath=$(dirname $0)

# copy assets
cp -a $basepath/../build/codes.json $basepath/../lib
rm -rf $basepath/../lib/index.js
