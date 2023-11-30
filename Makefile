CC := gcc
CFLAGS := -std=gnu89

SRCS := 0-binary_tree_node.c 0-main.c binary_tree_print.c 1-binary_tree_insert_left.c
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
