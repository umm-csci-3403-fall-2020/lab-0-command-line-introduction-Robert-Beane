#!/bin/bash

# Robert Beane

# Parameters
number=$1

# extract the NthPrime function
tar xfz NthPrime.tgz

cd NthPrime/ # move to the NthPrime directory for easier calls
# compile the NthPrime function
gcc main.c nth_prime.c -o NthPrime

# run the function with the given number
./NthPrime "$number"
