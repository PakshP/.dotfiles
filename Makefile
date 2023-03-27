# Makefile for .dofiles repository

# Set the shell to bash
SHELL := /bin/bash

# Define the phony targets (i.e. targets that don't correspond to files)
.PHONY: linux clean

# Default target: run the linux target
default: linux

# Linux target: run the linux.sh script
linux: clean
	chmod +x ./bin/linux.sh
	./bin/linux.sh

# Clean target: run the cleanup.sh script
clean:
	chmod +x ./bin/cleanup.sh
	./bin/cleanup.sh
