.PHONY: all
all: bad_idea_generator

utilities.o: utilities.c
	gcc -c -o $@ utilities.c

bad_idea_generator.o: bad_idea_generator.c
	gcc -c -o $@ bad_idea_generator.c

bad_idea_generator: bad_idea_generator.o utilities.o
	gcc -o $@ -lm bad_idea_generator.o utilities.o
