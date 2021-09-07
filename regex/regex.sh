#!/bin/bash

# Given the example in the prelab this takes a list of two elements, the first is a name
# the second is a food, and then puts them in a list starting with the name
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# This takes 2 sentences, the first is I am ... with and name and the second is my favorite sandwich is ...
# with a sandwich. Then It returns them in a list 1. name and 2. favorite sandwich. The p at the end removes the non 
# matching part
sed -En 's/\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-zA-Z]+)\./1. \1\n2. \2\n/p' <r1_input.txt > r1_output.txt

# this takes a sentence that says sandwich with ... ingredients and then states either for here or to go,
# then puts it is s list of 1. ingredients and 2. either for here or to go
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' <r2_input.txt > r2_output.txt


