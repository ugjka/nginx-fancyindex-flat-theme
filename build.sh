#!/bin/bash
make
find build \( -name '*.css' -o -name '*.html' -o -name '*.js' -o -name '*.json' -o -name '*.txt' -o -name '*.xml' -o -name '*.yml' \) -exec gzip --best --keep -f {} \;
rsync -Pvhr --delete build/ ugjka.net:share/_/
