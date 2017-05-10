#! /bin/sh

for i in $(ls *.tiff); do
	ketos -v transcrib -o $i.html $i
; done
