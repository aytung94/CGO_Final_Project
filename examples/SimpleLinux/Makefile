CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=

CFLAGS := -O3 -I .

SRCS := $(shell find . -name '*.c')
OBJS := $(subst .cpp,.o,$(SRCS))

all: deepbelief
gcc: deepbelief
llvm: deepbeliefLLVM

deepbelief: $(OBJS)
	gcc -o deepbelief.out $(OBJS) -L/usr/lib -ljpcnn

deepbeliefLLVM: $(OBJS)
	clang -o deepbeliefLLVM.out $(OBJS) -L/usr/lib -ljpcnn	

deepbeliefOpt:
	clang main.c -c -emit-llvm 
	opt -adce -break-crit-edges main.bc -o mainOpt.bc
	clang mainOpt.bc -o deepbeliefOpt.out -L/usr/lib -ljpcnn

%.o: %.cpp
	$(CC) $(CPPFLAGS) -fPIC -c $< -o $(basename $@).o

clean:
	find . -iname "*.o" -exec rm '{}' ';'

myclean:
	rm *.out	

