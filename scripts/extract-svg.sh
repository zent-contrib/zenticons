#!/bin/sh

basepath=$(dirname $0)

rm -rf $basepath/../svg

/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool export slices \
--formats=svg \
--overwriting=YES \
--save-for-web=YES \
--output=$basepath/../svg $basepath/../assets/icons.sketch
