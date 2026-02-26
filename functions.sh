#!/bin/bash

greet() {
               echo "Hello.$1"
	 }
add() { 
	       SUM=$(( $1 + $2 ))
	       echo "sum is: $SUM" 
	 
	 }

greet Alekh
add 1 2


