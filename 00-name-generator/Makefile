all: name-generator

name-generator: name-generator.o
	cobc -x -o name-generator.out name-generator.o

name-generator.o: name-generator.cbl
	cobc -c -free -x name-generator.cbl

clean:
	rm -rf *.o name-generator
