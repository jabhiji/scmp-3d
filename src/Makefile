# This file can be used to compile and link CARTGEN++ 

# compiler used
CC = mpic++

# optional compile time flags (-O2, -O3 etc)
CFLAGS = -O3

EXE = sc3d.x

## Build targets

# root target (builds the final executable)

$(EXE):	sc3d.o \
	writeMesh.o
	$(CC) sc3d.o writeMesh.o -o $(EXE) -L /Users/jabhiji/MYLIBS/hdf5/lib -lm -lhdf5 -lz -liconv

# compile dependencies

sc3d.o: sc3d.cpp
	$(CC) $(CFLAGS) -c sc3d.cpp -o sc3d.o

writeMesh.o: writeMesh.h writeMesh.cpp
	$(CC) $(CFLAGS) -I /Users/jabhiji/MYLIBS/hdf5/include -c writeMesh.cpp -o writeMesh.o

clean:
	/bin/rm -f *.o

veryclean:
	/bin/rm -f *.o *.x

wipedata:
	/bin/rm -f ../out/*.xmf ../out/xdmf/*.xmf ../out/hdf5/*.h5
