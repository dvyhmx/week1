all:StaticApp

# which compiler
CC = gcc

MYLIB = libstatic.a
INSTDIR = bin

make_directory:
	-mkdir $(INSTDIR)

# clean .o file from last compile
clean:      
	-rm -rf $(INSTDIR)

StaticApp: clean make_directory main.o $(MYLIB) 
	$(CC) -o $(INSTDIR)/StaticApp $(INSTDIR)/main.o -L$(INSTDIR)/ -lstatic

#build object file of main
main.o: 
	$(CC) -c main.c -o $(INSTDIR)/main.o

# static libraries
$(MYLIB): add.o answer.o
	ar rcs $(INSTDIR)/$(MYLIB) $(INSTDIR)/add.o $(INSTDIR)/answer.o

add.o: 
	$(CC) -c src/add.c -o $(INSTDIR)/add.o

answer.o: 
	$(CC) -c src/answer.c -o $(INSTDIR)/answer.o
	