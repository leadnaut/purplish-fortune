CC=gcc
CFLAGS=-Wall -pedantic -std="gnu99"

ODIR=obj
LIBS=-lncurses

DEPS = ncutil.h test.h

_OBJ = test.o ncutil.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o 
