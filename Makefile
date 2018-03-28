all : pari

pari :  HashMap.o SomeKeyHash.o main.o
gcc -o pari HashMap.o SomeKeyhash.o main.o 

HashMap.o : HashMap.cpp HashMap.h
gcc -o HashMap.o -c HashMap.cpp

SomeKeyHash.o: SomeKeyHash.cpp SomeKeyHash.h 
gcc -o  SomeKeyHash.o -c SomeKeyHash.cpp

main.o : main.cpp HashMap.h
gcc -o main.o -c main.cpp

clean :
#enlever les fichiers generes

mrproper : clean
#enlever les dossiers générés


