CC=gcc
SRC=src
BIN=bin
LIBS=-lcurses -lm
RM=rm -f
 
.PHONY: all clean

all: $(BIN) $(BIN)/books

clean:
	$(RM) $(BIN)/books $(SRC)/books.o

$(BIN)/books: $(SRC)/books.o
	$(CC) -o $(BIN)/books $(SRC)/books.o $(LIBS)

.SUFFIXES:
.SUFFIXES: .c .o

.c.o:
	$(CC) -c -o $@ $<


$(BIN):
	@echo "Folder $(directory) does not exist"
	mkdir -p $@

