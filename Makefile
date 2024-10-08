CC = g++
CFLAGS = -Wall -g
LIBRARY = libcalculator.a
TARGET = calculator

INCLUDE = -I./include
SRCS = src/main.cpp src/calculator.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(LIBRARY) $(TARGET)

$(LIBRARY): src/calculator.o
	ar rcs $(LIBRARY) $^

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDE) -o $(TARGET) $(OBJS) -L. -lcalculator

clean:
	rm -f $(OBJS) $(LIBRARY) $(TARGET)
