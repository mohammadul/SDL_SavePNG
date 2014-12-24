CC=gcc

CFLAGS=-g `sdl2-config --cflags`
LDFLAGS=`sdl2-config --libs` -lpng 

SOURCES=savepng.c main.c
EXECUTABLE=savepng

OBJECTS=$(SOURCES:.c=.o)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC)  $(OBJECTS) -o $@ $(LDFLAGS)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rf *.o *.a $(EXECUTABLE)
