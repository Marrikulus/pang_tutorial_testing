CC=g++
CFLAGS=-c -Wall
LDFLAGS=-lsfml-graphics -lsfml-window -lsfml-system
SOURCES=pang.cpp Game.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=app
DEPS=Game.h


all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o: $(DEPS)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *o app

start:
	./$(EXECUTABLE)
