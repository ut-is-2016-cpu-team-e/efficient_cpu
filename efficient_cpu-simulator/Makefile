CC = g++
CXXFLAGS = -Wall -O2 -std=c++11
LDFLAGS = 

sim: sim.cpp assembler.cpp cpu.cpp show.cpp tools.cpp
		$(CC) $(CXXFLAGS) -o $@ $^


clean:
		rm -f sim
