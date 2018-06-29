#!/usr/bin/env bash

for dir in ~/work/*; 
	do (echo "Pulling "$dir; 
	cd "$dir" && git pull --all); 
	done