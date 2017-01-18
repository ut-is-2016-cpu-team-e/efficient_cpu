SRCDIR = src
INCDIR = include
OBJDIR = obj
RESDIR = result
PROGNAME = sim
TARGET = $(PROGNAME)
SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(addprefix $(OBJDIR)/,$(notdir $(patsubst %.cpp,%.o,$(SRCS))))

CC = g++
CXXFLAGS = -Wall -O2 -std=c++11 
LDFLAGS = -lncurses

.PHONY: clean


$(TARGET): $(OBJS)
		@if [ ! -d $(RESDIR) ]; then mkdir $(RESDIR); fi
		$(CC) $(CXXFLAGS) -o $@ $^ $(LDFLAGS) 


$(OBJDIR)/%.o:$(SRCDIR)/%.cpp
		@if [ ! -d $(OBJDIR) ]; then mkdir $(OBJDIR); fi
		$(CC) $(CXXFLAGS) -I $(INCDIR) -o $@ -c $< 


clean:
		rm -rf $(PROGNAME) $(OBJDIR) $(RESDIR)
