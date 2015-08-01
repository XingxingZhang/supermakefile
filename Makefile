# change the target if you need
OUT_EXEC = test 
OBJS = $(patsubst %.cpp, %.o, $(wildcard *.cpp))

CC = g++
CPPFLAGS = -O3 -finline-functions -Wall -Winline -pipe

INCLUDES = 
LDFLAGS = 

all : $(OUT_EXEC)
	rm *.o

$(OUT_EXEC) : $(OBJS)
	$(CC) -o $@ $^ $(INCLUDES) $(LDFLAGS)

%.o : %.cpp
	$(CC) $(CPPFLAGS) -c $< -o $@ $(INCLUDES)

clean:
	rm -f *.o
	rm -f $(OUT_EXEC)

