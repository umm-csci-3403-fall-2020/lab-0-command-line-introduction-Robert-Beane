#!/bin/bash

# Robert Beane

# Parameters
number=$1

tar xfz NthPrime.tgz 
gcc NthPrime/main.c NthPrime/nth_prime.c -o NthPrime/NthPrime
./NthPrime/NthPrime $number
