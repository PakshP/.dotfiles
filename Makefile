# Makefile for .dofiles repository

# Linux target: run the linux.sh script
linux: clean
	chmod +x ./bin/linux.sh
	./bin/linux.sh

# Clean target: run the cleanup.sh script
clean:
	chmod +x ./bin/cleanup.sh
	./bin/cleanup.sh
