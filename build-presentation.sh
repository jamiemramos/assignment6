#!/bin/bash

INPUT=$1
TEMPLATE=template-index.html
TRANSITION=convex
THEME=sky

pandoc -t revealjs --template=$TEMPLATE -s --variable theme="$THEME" --variable transition="$TRANSITION" --variable revealjs-url="./" $INPUT.md -o index.html
echo "Script has run. Presentation $1 has been made."