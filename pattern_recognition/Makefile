target: main

main: testing.cpp
	g++ -g -O2 -std=c++11 -o main testing.cpp `pkg-config --cflags --libs grt` -lzmq


clean:
	rm -rf *.o main
