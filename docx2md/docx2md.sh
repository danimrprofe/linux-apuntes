#!/bin/bash
#
# generate a Markdown version of a word document. Goes in separate folder, since
# images are extracted and converted as well (separate folder avoids naming clashes).
#
# REQUIREMENTS: pandoc
#
#
# with pandoc
#  --extract-media=[media folder]
#
# USAGE:
#
# docx2md.sh filename #(no extension)
#
# This will generate a converted file in a subfolder, for example if you have a file
# `contract.docx`:
#
# generates:
# ```
# contract
# ├── contract.md
# └── media
#     ├── image1.png
#     ├── image2.png
#     └── image3.png
# ```
#
# Author: Jesper Rønn-Jensen 2015-11-30
# https://gist.github.com/jesperronn/ff5764274b3642bc7f2f
# Inspired by https://gist.github.com/aembleton/1eb889bc443996a508df
#
which pandoc > /dev/null
rc=$?
if [[ $rc != 0 ]]; then
  echo "FATAL missing pandoc. You can install with 'brew install pandoc' or similar"
  exit 9
fi

if [ -z "$1" ]; then
  echo "Uso:"
  echo ""
  echo "Convertir un archivo:  docx2md.sh [nombre]"
  echo "Convertir todos los docs de la carpeta: docx2md.sh todos"
  exit 13
fi

if [ "$1" == "todos" ]
then

  for file in *.docx
    do
      
      echo "basename '"$file"' .docx"
      echo "mkdir -p "$carpeta""
      pandoc -f docx -t markdown --extract-media="." -o "$file" "../$carpeta"      
  done

else

  if [ ! -f "$1" ]; then
    echo "No se encuentra el archivo '$1'"
    exit 11
  else
    carpeta="${1//[[:space:]]/}"
    # mkdir -p "$carpeta"
    # cd "${1//[[:space:]]/}"
    pandoc -f docx -t markdown --extract-media="." -o "$carpeta.md" "$1"
  fi
fi