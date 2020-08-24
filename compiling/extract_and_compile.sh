#!/bin/bash

# Robert Beane

# Parameters
number=$1
dir=$2

tar xvfz NthPrime.tgz --directory /$dir
gcc -o NthPrime $dir/NthPrime/main.c $dir/NthPrime/nth_prime.c
./build $dir/NthPrime
