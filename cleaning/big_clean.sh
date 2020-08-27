#!/bin/bash

# Robert Beane

# Parameters
comp=$1 # takes inputed file
name=$(basename "$comp") # gets full name of file (.tgz)
noext=$(basename "${comp%.*}") # gets directory name with no extension
here=$(pwd) # current working directory

# temp directory generator
tmp_dir=$(mktemp -d -t clean-XXX)

# Extraction
tar xzf "$name" -C "$tmp_dir"

# Look for "DELETE ME!" and remove all files containing it
grep "DELETE ME!" -rlZ "$tmp_dir" | xargs -0 rm

# Compress the new, cleaned directory
cd "$tmp_dir" || exit
tar czf cleaned_"$name" "$noext"

# move the tgz to the correct directory
mv "$tmp_dir"/cleaned_"$name" "$here"
