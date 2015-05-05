
target : all

all: output

output: testing.cpp testing.o
	g++ testing.o  -o output -I/usr/local/include -L/usr/local/lib -lgrt	
testing.o: testing.cpp
	g++ -std=c++11 -g -c testing.cpp -I/usr/local/include

clean:
	rm -rf testing.o output
