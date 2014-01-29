all:
	g++ -O3 -I /usr/local/include/ -L /usr/local/lib -o sc3d.x -framework OpenGL -framework Cocoa -framework IOKit sc3d.cpp -lglfw

clean:
	rm *.x
