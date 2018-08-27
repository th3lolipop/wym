#!/bin/bash

read -p "CMD: " cmd

for x in $(cat ip.txt)
do
	ssh root@$x $cmd
done
