# Makefile for a Trylon program.

PROGRAM := trylon-server


SOURCES := main $(wildcard [A-Z]*) $(wildcard sources/*) $(wildcard build-settings) $(wildcard build-settings.local)


-include makefile.local

all: runnit


$(PROGRAM): $(SOURCES)
	@trylon
	@echo "---------------------------------------------"
	@echo


.PHONY: runnit
runnit: $(PROGRAM)
	@./$(PROGRAM) $(PROGRAM_ARGS)

