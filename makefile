
all : main 

BIN      = main

CC       = g++
LIBS     = 
CPPFLAGS = -Wall -g -std=c++11
CXXFLAGS = -Wall -g -std=c++11
CFLAGS   = -g

ROOTSRC  = $(wildcard *.cpp)
ROOTOBJ  = $(patsubst %cpp,%o,$(ROOTSRC))

$(BIN):$(ROOTOBJ)
	$(CC) $(CXXFLAGS) $(ROOTOBJ) -o $(BIN) $(LIBS)

clean:
	rm -rf $(ROOTOBJ)

distclean:
	rm -rf $(BIN) $(ROOTOBJ)
