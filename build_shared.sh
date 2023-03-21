gcc -c main.c -o main.o
gcc -c -fPIC static/add.c -o shared/add.o
gcc -c -fPIC shared/answer.c -o shared/answer.o
gcc -shared shared/answer.o shared/add.o -o shared/libanswer.so
#local
export LD_LIBRARY_PATH=$(pwd)/shared
#global
#sudo cp shared/libshared.so /usr/lib
#sudo chmod 755 /usr/lib/libshared.so

gcc main.o -Lshared -lanswer -o shared/main_shared
./shared/main_shared