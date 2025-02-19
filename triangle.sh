#!/bin/bash

# Ask the user for the number of rows
read -p "Enter the number of rows: " rows

# Print the triangle pattern
for ((i=1; i<=rows; i++))
do
    # Print spaces before stars
    for ((j=1; j<=rows-i; j++))
    do
        echo -n " "
    done
    
    # Print stars
    for ((k=1; k<=i; k++))
    do
        echo -n "* "
    done
    
    # Move to the next line
    echo
done