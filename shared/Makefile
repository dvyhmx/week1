all:SharedApp

# which compiler
CC = gcc

MYLIB = libshared.so
INSTDIR = bin
PWD = 
make_directory:
	-mkdir $(INSTDIR)

# clean .o file from last compile
clean:      
	-rm -rf $(INSTDIR)

SharedApp: clean make_directory main.o $(MYLIB)
	$(CC) -o $(INSTDIR)/SharedApp $(INSTDIR)/main.o -L$(INSTDIR)/ -lshared

#build object file of main
main.o: 
	$(CC) -c main.c -o $(INSTDIR)/main.o

# static libraries
$(MYLIB): add.o sub.o
	$(CC) -shared $(INSTDIR)/add.o $(INSTDIR)/sub.o -o $(INSTDIR)/$(MYLIB)

add.o: 
	$(CC) -c -fPIC src/add.c -o $(INSTDIR)/add.o

sub.o: 
	$(CC) -c -fPIC src/sub.c -o $(INSTDIR)/sub.o
	