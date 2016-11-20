CC = g++
CXXFLAGS = -Wall -O2 -std=c++11

all: asm sim

asm: asm.cpp assembler.cpp tools.cpp
		$(CC) $(CXXFLAGS) -o $@ $^

sim: sim.cpp assembler.cpp cpu.cpp execute.cpp debugger.cpp show.cpp tools.cpp
		$(CC) $(CXXFLAGS) -o $@ $^


clean:
		rm -f asm sim *.log
