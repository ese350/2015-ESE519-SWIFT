
wrapper: wrapper.o SkeletonTracker.o
	g++ -fPIC -shared -o wrapper wrapper.o SkeletonTracker.o

wrapper.o: wrapper.cpp
	g++ -g -c -fPIC  -shared -I./NiTE2/Include -I./OpenNI2/Include wrapper.cpp -o wrapper.o -lglut -lOpenNI2 -lNiTE2 -L./OpenNI2/Redist -L./NiTE2/Redist -L./

SkeletonTracker.so:SkeletonTracker.o
	g++ -g -shared -Wl,-soname,SkeletonTracker.so -o SkeletonTracker.so  SkeletonTracker.o -lglut -lOpenNI2 -lNiTE2 -L./OpenNI2/Redist -L./NiTE2/Redist -L./

SkeletonTracker.o: SkeletonTracker.cpp
	g++ -g -c -fPIC -I./NiTE2/Include -I./OpenNI2/Include SkeletonTracker.cpp -o SkeletonTracker.o  -lglut -lOpenNI2 -lNiTE2 -L./OpenNI2/Redist -L./NiTE2/Redist -L./

clean : 
	rm -rf wrapper *.o
