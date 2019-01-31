#!/bin/bash
# Sort and count number of occurrence of types

function occ_types() {
  find . -maxdepth 1 -type f | rev | cut -d "." -f  1 | grep -v "/" | rev | sort | uniq -c | sort
}
