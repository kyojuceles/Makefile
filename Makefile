.SUFFIXES = .c .o
OBJECTS = main.o read.o
SRCS	= main.c read.c

CC	= gcc
CFLAGS	= -g -c

TARGET = test

$(TARGET) : $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

clean	:
	rm -rf $(OBJECTS) $(TARGET) core

main.o	: io.h	main.c
read.o	: io.h	read.c
