#!/bin/bash

check_disk() {
	 echo "Disk Usage:" 
	 df -h /
	 return 0
 }

check_memory() {
	echo "Memory Usage:"
	free -h
	return 0
}

check_disk
check_memory

