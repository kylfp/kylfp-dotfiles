#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#191919/g' \
         -e 's/rgb(100%,100%,100%)/#c8c8c8/g' \
    -e 's/rgb(50%,0%,0%)/#121212/g' \
     -e 's/rgb(0%,50%,0%)/#3f6cad/g' \
 -e 's/rgb(0%,50.196078%,0%)/#3f6cad/g' \
     -e 's/rgb(50%,0%,50%)/#2a2a2a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#2a2a2a/g' \
     -e 's/rgb(0%,0%,50%)/#c8c8c8/g' \
	"$@"
