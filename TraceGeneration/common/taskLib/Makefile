PROJECT = libTask.a
OBJECTS = TaskGraph.o TaskGraphInfo.o Task.o Action.o ct_file.o Backend.o
CC = gcc
CFLAGS = -O3 -g -Wall -pthread -fPIC
CXX = g++
CXXFLAGS  = -std=c++11 -O3 -g -Wall -pthread -fPIC
HEADERS = Task.h 

all: $(PROJECT)

$(PROJECT): $(OBJECTS)
	ar rc $(PROJECT) $(OBJECTS)

objects: $(OBJECTS)


# ct_file is compiled separately for c and c++ usage
#ct_file.o:
#	g++ -c $(CXXFLAGS) ct_file.c -o ct_file.o


.PHONY: test

.PHONY: clean	
clean:
	rm -f $(PROJECT) $(OBJECTS)
	rm -f Task_test
