CC := gcc
CFLAGS = -std=gnu89 

SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)
TARGET := binary_tree_node_test

DEPS := binary_trees.h
.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

test: $(TARGET)
	./$(TARGET)
