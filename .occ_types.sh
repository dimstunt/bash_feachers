#!/bin/bash

# Sort and count number of occurrence of types

function occ_types() {
  find . -maxdepth 1 -type f | grep -v "\.\/\." | sed 's/\.\///' | grep "\." | rev | cut -d "." -f  1 | rev | sort | tr '[:upper:]' '[:lower:]' | uniq -c | sort -r
}
